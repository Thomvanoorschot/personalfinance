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

type TransactionCategory struct {
	ID                         uuid.UUID `sql:"primary_key"`
	Slug                       string
	LabelEn                    string
	LabelNl                    string
	TransactionCategoryGroupID uuid.UUID
	CreatedAt                  *time.Time
	UpdatedAt                  *time.Time
}
