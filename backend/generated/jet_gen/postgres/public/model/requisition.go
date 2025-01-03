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

type Requisition struct {
	ID                 uuid.UUID `sql:"primary_key"`
	UserID             uuid.UUID
	Reference          uuid.UUID
	Status             *string
	EndUserAgreementID uuid.UUID
	InstitutionID      string
	Link               string
	CreatedAt          *time.Time
	UpdatedAt          *time.Time
}
