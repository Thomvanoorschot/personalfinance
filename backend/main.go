package main

import (
	"fmt"

	"personalfinance/gocardless"
)

const (
	abnID         = "ABNAMRO_ABNANL2A"
	requisitionID = "4a447eea-3af0-483e-8a31-ded8c9d75ccd"
	accountID     = "e75fc85d-b317-447d-92f3-0230b17cdc9b"
)

func main() {
	client := gocardless.NewClient("135a9cea-548c-4cbd-9574-fe224bacfd33", "619d2f9ef9e0f13bb050b2f95a5721866e5338278db9ac5a435781a6fac6ccf36eea4cead508799ab08181166e6b7ee60870d5bf38948f9de14138e56f4aa8de")
	//institutions, err := client.GetInstitutions("nl")
	//if err != nil {
	//	return
	//}
	//fmt.Println(institutions)
	//link, err := client.CreateRequisitionsLink(abnID)
	//if err != nil {
	//	return
	//}
	accounts, err := client.GetAccounts(requisitionID)
	if err != nil {
		return
	}
	fmt.Println(accounts)
	transactions, err := client.GetTransactions(accountID)
	if err != nil {
		return
	}
	fmt.Println(transactions)
	//cfg := config.Load()
	//repo := repositories.NewRepository(cfg)
	//svc := user.NewService(repo)
	//err := svc.Register(context.Background())
	//if err != nil {
	//	log.Fatal(err)
	//}
}
