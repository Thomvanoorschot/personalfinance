//
// Code generated by go-jet DO NOT EDIT.
//
// WARNING: Changes to this file may cause incorrect behavior
// and will be lost if the code is regenerated
//

package model

import (
	"github.com/google/uuid"
	"time"
)

type Account struct {
	ID        uuid.UUID `sql:"primary_key"`
	UserID    uuid.UUID
	Iban      string
	CreatedAt *time.Time
	UpdatedAt *time.Time
}
