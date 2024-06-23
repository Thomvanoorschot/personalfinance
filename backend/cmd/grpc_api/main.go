package main

import (
	"log"
	"net/http"

	"personalfinance/api"
	"personalfinance/config"
	"personalfinance/generated/proto/protoconnect"
	"personalfinance/gocardless"
	"personalfinance/repositories"
	"personalfinance/services/banking"
	"personalfinance/services/user"

	"connectrpc.com/connect"
	connectcors "connectrpc.com/cors"
	"connectrpc.com/grpcreflect"
	"github.com/rs/cors"
	"golang.org/x/net/http2"
	"golang.org/x/net/http2/h2c"
	"google.golang.org/protobuf/reflect/protoregistry"
)

type ServiceNames []string

func (s ServiceNames) Names() []string {
	return s
}

func main() {
	interceptors := connect.WithInterceptors(api.NewAuthInterceptor())

	mux := http.NewServeMux()

	cfg := config.Load()
	repo := repositories.NewRepository(cfg)
	gcls := gocardless.NewClient(cfg.GocardlessSeretID, cfg.GocardlessSeretKey)

	// Banking
	bankingService := banking.NewService(repo, gcls)
	bankingPath, bankingHandler := protoconnect.NewBankingServiceHandler(api.NewBankingHandler(bankingService), interceptors)
	mux.Handle(bankingPath, bankingHandler)

	// user
	userService := user.NewService(repo)
	userPath, userHandler := protoconnect.NewUserServiceHandler(api.NewUserHandler(userService), interceptors)
	mux.Handle(userPath, userHandler)

	reflector := grpcreflect.NewReflector(
		ServiceNames{protoconnect.BankingServiceName},
		grpcreflect.WithExtensionResolver(protoregistry.GlobalTypes),
		grpcreflect.WithDescriptorResolver(protoregistry.GlobalFiles),
	)
	mux.Handle(grpcreflect.NewHandlerV1(reflector))
	mux.Handle(grpcreflect.NewHandlerV1Alpha(reflector))

	c := cors.New(cors.Options{
		AllowedOrigins: []string{"*"}, // replace with your domain
		AllowedMethods: connectcors.AllowedMethods(),
		AllowedHeaders: connectcors.AllowedHeaders(),
		ExposedHeaders: connectcors.ExposedHeaders(),
		MaxAge:         7200, // 2 hours in seconds
	})
	err := http.ListenAndServe(
		"localhost:8080",
		h2c.NewHandler(c.Handler(mux), &http2.Server{}),
	)
	if err != nil {
		log.Fatal("failed to server")
	}
}
