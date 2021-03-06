.PHONY: push

LAST_DISC = $(lastword $(sort $(wildcard lab*)))

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

push: ## Pushes this repo to GitHub
	git add -A
	git commit -m "${LAST_DISC}"
	git push
