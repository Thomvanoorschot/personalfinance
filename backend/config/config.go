package config

import (
	"fmt"
	"log"
	"sync"

	"github.com/joho/godotenv"

	"github.com/kelseyhightower/envconfig"
)

type Config struct {
	APIHost              string `envconfig:"API_HOST"`
	APIPort              string `envconfig:"API_PORT"               default:"8080"`
	CORSAllowOrigin      string `envconfig:"CORS_ALLOW_ORIGIN"      default:"*"`
	DbConnectionString   string `envconfig:"DB_CONNECTION_STRING" default:"postgres://postgres:Welkom01!@localhost/postgres?sslmode=disable"`
	CORSAllowCredentials string `envconfig:"CORS_ALLOW_CREDENTIALS" default:"true"`
	CORSAllowHeaders     string `envconfig:"CORS_ALLOW_HEADERS"     default:"*"`
	CORSAllowMethods     string `envconfig:"CORS_ALLOW_METHODS"     default:"GET, PUT, PATCH, POST, DELETE, OPTIONS"`
	GocardlessSeretID    string `envconfig:"GOCARDLESS_SECRET_ID" default:""`
	GocardlessSeretKey   string `envconfig:"GOCARDLESS_SECRET_KEY" default:""`
}

var config *Config
var once sync.Once

func Load() *Config {
	once.Do(func() {
		load()
	})

	return config
}

func load() {
	err := godotenv.Load()
	if err != nil {
		fmt.Println("Could not find a .env file (can be ignored when not in local dev mode")
	}

	config = new(Config)
	if err := envconfig.Process("", config); err != nil {
		log.Fatal(err)
	}
}
