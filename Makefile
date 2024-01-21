.PHONY: docs
.PHONY: format
.PHONY: validate

all: format
all: validate
all: docs

format: ## Format all terraform files
	git grep --cached -Il '' -- '*.tf' '*.tfvars' | xargs -n1 terraform fmt
validate: ## Validate terraform
	terraform init
	terraform validate
	rm -f .terraform.lock.hcl
docs: ## Creates markdown tables for in- and output of this module
	terraform-docs markdown table . > README.md
