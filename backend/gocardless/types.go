package gocardless

import "time"

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
		Booked []struct {
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
		} `json:"booked"`
		Pending []interface{} `json:"pending"`
	} `json:"transactions"`
}

type AccountsResponse struct {
	Id         string   `json:"id"`
	Status     string   `json:"status"`
	Agreements string   `json:"agreements"`
	Accounts   []string `json:"accounts"`
	Reference  string   `json:"reference"`
}
