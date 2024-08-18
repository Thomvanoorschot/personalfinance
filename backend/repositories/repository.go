package repositories

import (
	"context"
	"errors"
	"log"
	"sync"

	"personalfinance/config"
	"personalfinance/services/banking"
	"personalfinance/services/budgeting"

	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgconn"
	"github.com/jackc/pgx/v5/pgxpool"
)

type Queryer interface {
	Exec(ctx context.Context, sql string, arguments ...any) (commandTag pgconn.CommandTag, err error)
	Query(ctx context.Context, sql string, args ...any) (pgx.Rows, error)
	QueryRow(ctx context.Context, sql string, args ...any) pgx.Row
}

type Repository struct {
	connectionPool *pgxpool.Pool
	tx             *pgx.Tx
}

var repository *Repository
var once sync.Once

func NewRepository(config *config.Config) *Repository {
	once.Do(func() {
		pool, err := pgxpool.New(context.Background(), config.DbConnectionString)
		if err != nil {
			log.Fatal(err)
		}
		repository = &Repository{connectionPool: pool}
	})

	return repository
}

func (r *Repository) conn() Queryer {
	if r.tx != nil {
		return *r.tx
	}
	return r.connectionPool
}

func (r *Repository) BudgetingTx(ctx context.Context, fn func(budgeting.Repository) error) (err error) {
	tx, err := r.connectionPool.Begin(ctx)
	if err != nil {
		return err
	}

	defer func(r *Repository, tx pgx.Tx, ctx context.Context) {
		err = r.rollBack(tx, ctx)
	}(r, tx, ctx)

	err = fn(&Repository{tx: &tx})
	if err != nil {
		return err
	}
	return tx.Commit(ctx)
}

func (r *Repository) BankingTx(ctx context.Context, fn func(banking.Repository) error) (err error) {
	tx, err := r.connectionPool.Begin(ctx)
	if err != nil {
		return err
	}

	defer func(r *Repository, tx pgx.Tx, ctx context.Context) {
		err = r.rollBack(tx, ctx)
	}(r, tx, ctx)

	err = fn(&Repository{tx: &tx})
	if err != nil {
		return err
	}
	return tx.Commit(ctx)
}

func (r *Repository) rollBack(tx pgx.Tx, ctx context.Context) error {
	errTxRollBack := tx.Rollback(ctx)
	if errTxRollBack != nil && !errors.Is(errTxRollBack, pgx.ErrTxClosed) {
		return errTxRollBack
	}
	return nil
}
