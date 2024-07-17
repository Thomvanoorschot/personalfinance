package gocardless

import (
	"encoding/json"
	"fmt"
	"net/http"
	"sync"
	"time"

	"github.com/google/uuid"
	"github.com/valyala/fasthttp"
)

const (
	applicationJSON           = "application/json"
	requisitionsRedirectURL   = "https://panther-choice-greatly.ngrok-free.app/handleRequisition/%s"
	createRequisitionsLinkURL = "https://bankaccountdata.gocardless.com/api/v2/requisitions/"
	createEndUserAgreementURL = "https://bankaccountdata.gocardless.com/api/v2/agreements/enduser/"
	tokenURL                  = "https://bankaccountdata.gocardless.com/api/v2/token/new/"
	institutionsURL           = "https://bankaccountdata.gocardless.com/api/v2/institutions/?country="
	transactionsURL           = "https://bankaccountdata.gocardless.com/api/v2/accounts/%s/transactions/?date_from=%s"
	accountsURL               = "https://bankaccountdata.gocardless.com/api/v2/accounts/%s/"
	allRequisitionsURL        = "https://bankaccountdata.gocardless.com/api/v2/requisitions/"
	requisitionURL            = "https://bankaccountdata.gocardless.com/api/v2/requisitions/%s/"
	deleteRequisitionURL      = "https://bankaccountdata.gocardless.com/api/v2/requisitions/%s/"
)

type Client interface {
	GetInstitutions(countryCode string) (respBody InstitutionsResponse, err error)
	CreateRequisitionsLink(institutionID string, endUserAgreementID uuid.UUID) (respBody CreateRequisitionsLinkResponse, err error)
	GetTransactions(accountID uuid.UUID, amountOfDays int16) (respBody TransactionsResponse, err error)
	GetAccount(accountID uuid.UUID) (respBody AccountResponse, err error)
	GetRequisition(requisitionID uuid.UUID) (respBody RequisitionResponse, err error)
	DeleteRequisition(requisitionID uuid.UUID) (respBody DeleteRequisitionResponse, err error)
	GetAllRequisition() (respBody AllRequisitionsResponse, err error)
	CreateEndUserAgreement(institutionID string, maxTransactionHistoryDays int16) (respBody CreateEndUserAgreementResponse, err error)
}

type client struct {
	SecretId  string
	SecretKey string
	tokens    TokenResponse
	mx        sync.RWMutex
}

func NewClient(secretId string, secretKey string) Client {
	return &client{SecretId: secretId, SecretKey: secretKey}
}

func (c *client) GetInstitutions(countryCode string) (respBody InstitutionsResponse, err error) {
	req := fasthttp.AcquireRequest()
	defer fasthttp.ReleaseRequest(req)

	accessToken, err := c.getToken()
	req.Header.SetMethod(http.MethodGet)
	req.SetRequestURI(fmt.Sprintf("%s%s", institutionsURL, countryCode))
	req.Header.Set("accept", applicationJSON)
	req.Header.Set("Authorization", fmt.Sprintf("Bearer %s", accessToken))

	resp := fasthttp.AcquireResponse()
	defer fasthttp.ReleaseResponse(resp)

	err = fasthttp.Do(req, resp)
	if err != nil {
		return respBody, err
	}
	err = json.Unmarshal(resp.Body(), &respBody)
	if err != nil {
		return respBody, err
	}
	return respBody, err
}

func (c *client) CreateRequisitionsLink(institutionID string, endUserAgreementID uuid.UUID) (respBody CreateRequisitionsLinkResponse, err error) {
	req := fasthttp.AcquireRequest()
	defer fasthttp.ReleaseRequest(req)

	accessToken, err := c.getToken()

	req.Header.SetMethod(http.MethodPost)
	req.SetRequestURI(createRequisitionsLinkURL)
	req.Header.Set("accept", applicationJSON)
	req.Header.Set("Content-Type", applicationJSON)
	req.Header.Set("Authorization", fmt.Sprintf("Bearer %s", accessToken))

	ref := uuid.New().String()
	reqBytes, err := json.Marshal(CreateRequisitionsLinkRequest{
		Redirect:      fmt.Sprintf(requisitionsRedirectURL, ref),
		InstitutionID: institutionID,
		Reference:     ref,
		Agreement:     endUserAgreementID.String(),
	})
	if err != nil {
		return respBody, err
	}
	req.SetBody(reqBytes)
	resp := fasthttp.AcquireResponse()
	defer fasthttp.ReleaseResponse(resp)

	err = fasthttp.Do(req, resp)
	if err != nil {
		return respBody, err
	}
	err = json.Unmarshal(resp.Body(), &respBody)
	if err != nil {
		return respBody, err
	}
	return respBody, err
}

func (c *client) CreateEndUserAgreement(institutionID string, maxTransactionHistoryDays int16) (respBody CreateEndUserAgreementResponse, err error) {
	req := fasthttp.AcquireRequest()
	defer fasthttp.ReleaseRequest(req)

	accessToken, err := c.getToken()

	req.Header.SetMethod(http.MethodPost)
	req.SetRequestURI(createEndUserAgreementURL)
	req.Header.Set("accept", applicationJSON)
	req.Header.Set("Content-Type", applicationJSON)
	req.Header.Set("Authorization", fmt.Sprintf("Bearer %s", accessToken))

	reqBytes, err := json.Marshal(CreateEndUserAgreementRequest{
		InstitutionId:      institutionID,
		MaxHistoricalDays:  int(maxTransactionHistoryDays),
		AccessValidForDays: 90,
		AccessScope: []string{
			"balances",
			"details",
			"transactions",
		},
	})
	if err != nil {
		return respBody, err
	}
	req.SetBody(reqBytes)
	resp := fasthttp.AcquireResponse()
	defer fasthttp.ReleaseResponse(resp)

	err = fasthttp.Do(req, resp)
	if err != nil {
		return respBody, err
	}
	err = json.Unmarshal(resp.Body(), &respBody)
	if err != nil {
		return respBody, err
	}
	return respBody, err
}

func (c *client) GetTransactions(accountID uuid.UUID, amountOfDays int16) (respBody TransactionsResponse, err error) {
	req := fasthttp.AcquireRequest()
	defer fasthttp.ReleaseRequest(req)

	accessToken, err := c.getToken()
	req.Header.SetMethod(http.MethodGet)
	parameterizedURI := fmt.Sprintf(transactionsURL, accountID, subtractDays(amountOfDays))
	req.SetRequestURI(parameterizedURI)
	req.Header.Set("accept", applicationJSON)
	req.Header.Set("Authorization", fmt.Sprintf("Bearer %s", accessToken))

	resp := fasthttp.AcquireResponse()
	defer fasthttp.ReleaseResponse(resp)

	err = fasthttp.Do(req, resp)
	if err != nil {
		return respBody, err
	}
	err = json.Unmarshal(resp.Body(), &respBody)
	if err != nil {
		return respBody, err
	}
	return respBody, err
}
func (c *client) GetAccount(accountID uuid.UUID) (respBody AccountResponse, err error) {
	req := fasthttp.AcquireRequest()
	defer fasthttp.ReleaseRequest(req)

	accessToken, err := c.getToken()
	req.Header.SetMethod(http.MethodGet)
	req.SetRequestURI(fmt.Sprintf(accountsURL, accountID))
	req.Header.Set("accept", applicationJSON)
	req.Header.Set("Authorization", fmt.Sprintf("Bearer %s", accessToken))

	resp := fasthttp.AcquireResponse()
	defer fasthttp.ReleaseResponse(resp)

	err = fasthttp.Do(req, resp)
	if err != nil {
		return respBody, err
	}
	err = json.Unmarshal(resp.Body(), &respBody)
	if err != nil {
		return respBody, err
	}
	return respBody, err
}
func (c *client) GetRequisition(requisitionID uuid.UUID) (respBody RequisitionResponse, err error) {
	req := fasthttp.AcquireRequest()
	defer fasthttp.ReleaseRequest(req)

	accessToken, err := c.getToken()
	req.Header.SetMethod(http.MethodGet)
	req.SetRequestURI(fmt.Sprintf(requisitionURL, requisitionID))
	req.Header.Set("accept", applicationJSON)
	req.Header.Set("Authorization", fmt.Sprintf("Bearer %s", accessToken))

	resp := fasthttp.AcquireResponse()
	defer fasthttp.ReleaseResponse(resp)

	err = fasthttp.Do(req, resp)
	if err != nil {
		return respBody, err
	}
	err = json.Unmarshal(resp.Body(), &respBody)
	if err != nil {
		return respBody, err
	}
	return respBody, err
}
func (c *client) GetAllRequisition() (respBody AllRequisitionsResponse, err error) {
	req := fasthttp.AcquireRequest()
	defer fasthttp.ReleaseRequest(req)

	accessToken, err := c.getToken()
	req.Header.SetMethod(http.MethodGet)
	req.SetRequestURI(allRequisitionsURL)
	req.Header.Set("accept", applicationJSON)
	req.Header.Set("Authorization", fmt.Sprintf("Bearer %s", accessToken))

	resp := fasthttp.AcquireResponse()
	defer fasthttp.ReleaseResponse(resp)

	err = fasthttp.Do(req, resp)
	if err != nil {
		return respBody, err
	}
	err = json.Unmarshal(resp.Body(), &respBody)
	if err != nil {
		return respBody, err
	}
	return respBody, err
}
func (c *client) DeleteRequisition(requisitionID uuid.UUID) (respBody DeleteRequisitionResponse, err error) {
	req := fasthttp.AcquireRequest()
	defer fasthttp.ReleaseRequest(req)

	accessToken, err := c.getToken()
	req.Header.SetMethod(http.MethodDelete)
	req.SetRequestURI(fmt.Sprintf(deleteRequisitionURL, requisitionID))
	req.Header.Set("accept", applicationJSON)
	req.Header.Set("Authorization", fmt.Sprintf("Bearer %s", accessToken))

	resp := fasthttp.AcquireResponse()
	defer fasthttp.ReleaseResponse(resp)

	err = fasthttp.Do(req, resp)
	if err != nil {
		return respBody, err
	}
	err = json.Unmarshal(resp.Body(), &respBody)
	if err != nil {
		return respBody, err
	}
	return respBody, err
}

func (c *client) getToken() (string, error) {
	c.mx.RLock()

	if c.tokens.AccessExpiredAt.After(time.Now().Add(-60 * time.Second)) {
		c.mx.RUnlock()
		return c.tokens.Access, nil
	}
	c.mx.RUnlock()
	c.mx.Lock()
	defer c.mx.Unlock()
	resp, err := c.fetchToken()
	if err != nil {
		return "", err
	}
	c.tokens = resp
	return c.tokens.Access, nil
}

func (c *client) fetchToken() (respBody TokenResponse, err error) {
	if c.tokens.AccessExpiredAt.After(time.Now().Add(-60 * time.Second)) {
		return c.tokens, nil
	}
	req := fasthttp.AcquireRequest()
	defer fasthttp.ReleaseRequest(req)

	req.Header.SetMethod(http.MethodPost)
	req.SetRequestURI(tokenURL)
	req.Header.Set("accept", applicationJSON)
	req.Header.Set("Content-Type", applicationJSON)

	reqBytes, err := json.Marshal(TokenRequest{
		SecretId:  c.SecretId,
		SecretKey: c.SecretKey,
	})
	if err != nil {
		return respBody, err
	}
	req.SetBody(reqBytes)

	resp := fasthttp.AcquireResponse()
	defer fasthttp.ReleaseResponse(resp)

	err = fasthttp.Do(req, resp)
	if err != nil {
		return respBody, err
	}
	err = json.Unmarshal(resp.Body(), &respBody)
	if err != nil {
		return respBody, err
	}
	respBody.AccessExpiredAt = time.Now().Add(time.Duration(respBody.AccessExpires) * time.Second)
	respBody.RefreshExpiredAt = time.Now().Add(time.Duration(respBody.RefreshExpires) * time.Second)
	return respBody, err
}

func subtractDays(days int16) string {
	currentTime := time.Now()
	newTime := currentTime.AddDate(0, 0, -int(days-1))
	return newTime.Format("2006-01-02")
}
