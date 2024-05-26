generate:
	cd proto && buf generate && cd ..
#	rm -f -r ./backend/generated/proto && protoc \
#		--proto_path=proto proto/*.proto \
#		--go_out=backend/generated \
#		--go-grpc_out=backend/generated


up:
	docker compose up -d --build --force-recreate --remove-orphans --quiet-pull