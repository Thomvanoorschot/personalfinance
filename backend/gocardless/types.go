package gocardless

import (
	"time"

	"github.com/google/uuid"
)

const (
	DateFormat     = "2006-01-02"
	DateTimeFormat = "2006-01-02T15:04:05.000"
)

type TokenRequest struct {
	SecretId  string `json:"secret_id"`
	SecretKey string `json:"secret_key"`
}

type TokenResponse struct {
	Access           string    `json:"access"`
	AccessExpires    int       `json:"access_expires"`
	Refresh          string    `json:"refresh"`
	RefreshExpires   int       `json:"refresh_expires"`
	AccessExpiredAt  time.Time `json:"-"`
	RefreshExpiredAt time.Time `json:"-"`
}

type InstitutionsResponse []InstitutionResponse
type InstitutionResponse struct {
	Id                   string   `json:"id"`
	Name                 string   `json:"name"`
	Bic                  string   `json:"bic"`
	TransactionTotalDays string   `json:"transaction_total_days"`
	Countries            []string `json:"countries"`
	Logo                 string   `json:"logo"`
}

type CreateRequisitionsLinkRequest struct {
	Redirect      string `json:"redirect"`
	InstitutionID string `json:"institution_id"`
	Reference     string `json:"reference,omitempty"`
	Agreement     string `json:"agreement,omitempty"`
	UserLanguage  string `json:"user_language,omitempty"`
}

type CreateRequisitionsLinkResponse struct {
	Id                string        `json:"id"`
	Created           time.Time     `json:"created"`
	Redirect          string        `json:"redirect"`
	Status            string        `json:"status"`
	InstitutionId     string        `json:"institution_id"`
	Agreement         string        `json:"agreement"`
	Reference         string        `json:"reference"`
	Accounts          []interface{} `json:"accounts"`
	Link              string        `json:"link"`
	Ssn               interface{}   `json:"ssn"`
	AccountSelection  bool          `json:"account_selection"`
	RedirectImmediate bool          `json:"redirect_immediate"`
}

type TransactionsResponse struct {
	Transactions struct {
		Booked  []TransactionBody `json:"booked"`
		Pending []interface{}     `json:"pending"`
	} `json:"transactions"`
}

type TransactionBody struct {
	TransactionId     string `json:"transactionId,omitempty"`
	BookingDate       string `json:"bookingDate"`
	ValueDate         string `json:"valueDate"`
	ValueDateTime     string `json:"valueDateTime"`
	TransactionAmount struct {
		Amount   string `json:"amount"`
		Currency string `json:"currency"`
	} `json:"transactionAmount"`
	CreditorName    string `json:"creditorName,omitempty"`
	CreditorAccount struct {
		Iban string `json:"iban"`
	} `json:"creditorAccount,omitempty"`
	RemittanceInformationUnstructuredArray []string `json:"remittanceInformationUnstructuredArray"`
	ProprietaryBankTransactionCode         string   `json:"proprietaryBankTransactionCode"`
	BalanceAfterTransaction                struct {
		BalanceAmount struct {
			Amount   string `json:"amount"`
			Currency string `json:"currency"`
		} `json:"balanceAmount"`
		BalanceType string `json:"balanceType"`
	} `json:"balanceAfterTransaction"`
	InternalTransactionId string `json:"internalTransactionId"`
	DebtorName            string `json:"debtorName,omitempty"`
	DebtorAccount         struct {
		Iban string `json:"iban"`
	} `json:"debtorAccount,omitempty"`
}

type AccountResponse struct {
	Id            uuid.UUID `json:"id"`
	Created       time.Time `json:"created"`
	LastAccessed  time.Time `json:"last_accessed"`
	Iban          string    `json:"iban"`
	Status        string    `json:"status"`
	InstitutionId string    `json:"institution_id"`
	OwnerName     string    `json:"owner_name"`
}

type RequisitionResponse struct {
	Id                string            `json:"id"`
	Created           time.Time         `json:"created"`
	Redirect          string            `json:"redirect"`
	Status            RequisitionStatus `json:"status"`
	InstitutionId     string            `json:"institution_id"`
	Agreement         string            `json:"agreement"`
	Reference         string            `json:"reference"`
	Accounts          []uuid.UUID       `json:"accounts"`
	UserLanguage      string            `json:"user_language"`
	Link              string            `json:"link"`
	Ssn               string            `json:"ssn"`
	AccountSelection  bool              `json:"account_selection"`
	RedirectImmediate bool              `json:"redirect_immediate"`
}

type RequisitionStatus string

const (
	RequisitionStatusCreated                  RequisitionStatus = "CR"
	RequisitionStatusGivingConsent                              = "GC"
	RequisitionStatusUndergoingAuthentication                   = "UA"
	RequisitionStatusRejected                                   = "RJ"
	RequisitionStatusSelectingAccounts                          = "SA"
	RequisitionStatusGrantingAccess                             = "GA"
	RequisitionStatusLinked                                     = "LN"
	RequisitionStatusExpired                                    = "EX"

	//GivenConsent = "ID"
	//GivenConsent = "ER"
	//GivenConsent = "SU"
)

type AllRequisitionsResponse struct {
	Count    int         `json:"count"`
	Next     interface{} `json:"next"`
	Previous interface{} `json:"previous"`
	Results  []struct {
		Id                uuid.UUID   `json:"id"`
		Created           time.Time   `json:"created"`
		Redirect          string      `json:"redirect"`
		Status            string      `json:"status"`
		InstitutionId     string      `json:"institution_id"`
		Agreement         string      `json:"agreement"`
		Reference         string      `json:"reference"`
		Accounts          []string    `json:"accounts"`
		Link              string      `json:"link"`
		Ssn               interface{} `json:"ssn"`
		AccountSelection  bool        `json:"account_selection"`
		RedirectImmediate bool        `json:"redirect_immediate"`
		UserLanguage      string      `json:"user_language,omitempty"`
	} `json:"results"`
}
type DeleteRequisitionResponse struct {
	Summary    string `json:"summary"`
	Detail     string `json:"detail"`
	StatusCode int    `json:"status_code"`
}

type CreateEndUserAgreementRequest struct {
	InstitutionId      string   `json:"institution_id"`
	MaxHistoricalDays  int      `json:"max_historical_days"`
	AccessValidForDays int      `json:"access_valid_for_days"`
	AccessScope        []string `json:"access_scope"`
}

type CreateEndUserAgreementResponse struct {
	Id uuid.UUID `json:"id"`
}
