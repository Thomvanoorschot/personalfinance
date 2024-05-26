package gocardless

import (
	"encoding/json"
	"fmt"
	"net/http"
	"sync"
	"time"

	"github.com/valyala/fasthttp"
)

const (
	applicationJSON           = "application/json"
	requisitionsRedirectURL   = "https://google.com"
	createRequisitionsLinkURL = "https://bankaccountdata.gocardless.com/api/v2/requisitions/"
	tokenURL                  = "https://bankaccountdata.gocardless.com/api/v2/token/new/"
	institutionsURL           = "https://bankaccountdata.gocardless.com/api/v2/institutions/?country="
	transactionsURL           = "https://bankaccountdata.gocardless.com/api/v2/accounts/%s/transactions/"
	accountsURL               = "https://bankaccountdata.gocardless.com/api/v2/requisitions/%s/"
)

type Client interface {
	GetInstitutions(countryCode string) (respBody InstitutionsResponse, err error)
	CreateRequisitionsLink(institutionID string) (respBody CreateRequisitionsLinkResponse, err error)
	GetTransactions(accountID string) (respBody TransactionsResponse, err error)
	GetAccounts(requisitionID string) (respBody AccountsResponse, err error)
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

func (c *client) CreateRequisitionsLink(institutionID string) (respBody CreateRequisitionsLinkResponse, err error) {
	req := fasthttp.AcquireRequest()
	defer fasthttp.ReleaseRequest(req)

	accessToken, err := c.getToken()

	req.Header.SetMethod(http.MethodPost)
	req.SetRequestURI(createRequisitionsLinkURL)
	req.Header.Set("accept", applicationJSON)
	req.Header.Set("Content-Type", applicationJSON)
	req.Header.Set("Authorization", fmt.Sprintf("Bearer %s", accessToken))

	reqBytes, err := json.Marshal(CreateRequisitionsLinkRequest{
		Redirect:      requisitionsRedirectURL,
		InstitutionID: institutionID,
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

func (c *client) GetTransactions(accountID string) (respBody TransactionsResponse, err error) {
	req := fasthttp.AcquireRequest()
	defer fasthttp.ReleaseRequest(req)

	accessToken, err := c.getToken()
	req.Header.SetMethod(http.MethodGet)
	req.SetRequestURI(fmt.Sprintf(transactionsURL, accountID))
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
func (c *client) GetAccounts(requisitionID string) (respBody AccountsResponse, err error) {
	req := fasthttp.AcquireRequest()
	defer fasthttp.ReleaseRequest(req)

	accessToken, err := c.getToken()
	req.Header.SetMethod(http.MethodGet)
	req.SetRequestURI(fmt.Sprintf(accountsURL, requisitionID))
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
