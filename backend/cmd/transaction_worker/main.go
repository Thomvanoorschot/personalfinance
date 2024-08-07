package main

import (
	"context"
	"log"

	"personalfinance/config"
	"personalfinance/generated/jet_gen/postgres/public/model"
	"personalfinance/gocardless"
	"personalfinance/repositories"
	"personalfinance/services/banking"
)

func main() {
	cfg := config.Load()
	repo := repositories.NewRepository(cfg)
	gcls := gocardless.NewClient(cfg.GocardlessSeretID, cfg.GocardlessSeretKey)

	ctx := context.Background()
	accounts, err := repo.GetAllAccounts(ctx)
	if err != nil {
		log.Fatal("error getting accounts: ", err)
	}
	bankingService := banking.NewService(repo, gcls)
	var transactions []model.Transaction
	for _, account := range accounts {
		tx, err := bankingService.GetTransactions(account.ID, 7)
		if err != nil {
			log.Fatal("error getting transactions: ", err)
		}
		transactions = append(transactions, tx...)
	}
	err = repo.UpsertTransactions(ctx, transactions)
	if err != nil {
		log.Fatal("error upserting transactions: ", err)
	}
}
