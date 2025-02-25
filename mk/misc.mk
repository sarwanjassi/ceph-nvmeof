## Miscellaneous:

# nvmeof_cli
NVMEOF_CLI = $(DOCKER_COMPOSE_ENV) $(DOCKER_COMPOSE) run --rm nvmeof-cli --server-address $(NVMEOF_IP_ADDRESS) --server-port $(NVMEOF_GW_PORT)
NVMEOF_CLI_IPV6 = $(DOCKER_COMPOSE_ENV) $(DOCKER_COMPOSE) run --rm nvmeof-cli --server-address $(NVMEOF_IPV6_ADDRESS) --server-port $(NVMEOF_GW_PORT)

alias: ## Print bash alias command for the nvmeof-cli. Usage: "eval $(make alias)"
	@echo alias nvmeof-cli=\"$(NVMEOF_CLI)\" \; alias nvmeof-cli-ipv6=\'$(NVMEOF_CLI_IPV6)\'

.PHONY: alias
