generate:
	cd proto && buf generate --include-imports --include-wkt && cd ..

	jet -source=postgres -dsn="user=postgres password=Welkom01! host=localhost dbname=postgres sslmode=disable" -schema=public -path=./backend/generated/jet_gen
#	rm -f -r ./backend/generated/proto && protoc \
#		--proto_path=proto proto/*.proto \
#		--go_out=backend/generated \
#		--go-grpc_out=backend/generated


up:
	docker compose up -d --build --force-recreate --remove-orphans --quiet-pull