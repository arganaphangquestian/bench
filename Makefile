r.all: r.go r.rust r.ts
r.go:
	@echo "=========== GO ==========="; \
	cd gobench; \
	go build -o gobench ./main.go; \
	time ./gobench
r.rust:
	@echo "\n========== RUST =========="; \
	cd rustbench; \
	cargo build -q --release; \
	time ./target/release/rustbench
r.ts:
	@echo "\n=========== TS ==========="; \
	cd tsbench; \
	yarn run --silent build; \
	time node ./dist/main.js