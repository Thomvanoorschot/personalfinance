package banking

import "github.com/google/uuid"

type BankAccount struct {
	ID   uuid.UUID
	IBAN string
}
