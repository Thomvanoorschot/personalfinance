package main

import (
	"context"
	"log"
	"net"
	"net/http"

	"personalfinance/api"
	"personalfinance/config"
	"personalfinance/generated/proto"
	"personalfinance/gocardless"
	"personalfinance/repositories"
	"personalfinance/services/banking"
	"personalfinance/services/budgeting"
	"personalfinance/services/user"

	"github.com/grpc-ecosystem/grpc-gateway/v2/runtime"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
	"google.golang.org/grpc/reflection"
	proto2 "google.golang.org/protobuf/proto"
)

func main() {
	cfg := config.Load()
	repo := repositories.NewRepository(cfg)
	gcls := gocardless.NewClient(cfg.GocardlessSeretID, cfg.GocardlessSeretKey)

	listener, err := net.Listen("tcp", "192.168.25.17:8080")
	if err != nil {
		log.Fatalln("Failed to listen:", err)
	}
	s := grpc.NewServer()

	// Banking
	bankingService := banking.NewService(repo, gcls)
	bankingHandler := api.NewBankingHandler(bankingService)
	proto.RegisterBankingServiceServer(s, bankingHandler)

	// user
	userService := user.NewService(repo)
	userHandler := api.NewUserHandler(userService)
	proto.RegisterUserServiceServer(s, userHandler)

	// budgeting
	budgetingService := budgeting.NewService(repo)
	budgetingHandler := api.NewBudgetingHandler(budgetingService)
	proto.RegisterBudgetingServiceServer(s, budgetingHandler)

	reflection.Register(s)
	go func() {
		log.Fatalln(s.Serve(listener))
	}()
	conn, err := grpc.NewClient(
		"192.168.25.17:8080",
		grpc.WithTransportCredentials(insecure.NewCredentials()),
	)
	if err != nil {
		log.Fatalln("Failed to dial server:", err)
	}

	gatewayMux := runtime.NewServeMux(
		runtime.WithForwardResponseOption(redirectForwarder),
	)
	// Register Greeter
	err = proto.RegisterBankingServiceHandler(context.Background(), gatewayMux, conn)
	if err != nil {
		log.Fatalln("Failed to register gateway:", err)
	}

	gwServer := &http.Server{
		Addr:    "localhost:8090",
		Handler: gatewayMux,
	}

	log.Println("Serving gRPC-Gateway on http://localhost:8090")
	log.Fatalln(gwServer.ListenAndServe())
}

func redirectForwarder(ctx context.Context, w http.ResponseWriter, resp proto2.Message) error {
	headers := w.Header()
	if location, ok := headers["Grpc-Metadata-Location"]; ok {
		w.Header().Set("Location", location[0])
		w.WriteHeader(http.StatusFound)
	}

	return nil
}
