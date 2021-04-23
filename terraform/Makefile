
TERRAFORM=@envchain do terraform

.PHONY: init plan apply

init:
	$(TERRAFORM) init

plan: init
	$(TERRAFORM) plan

apply:
	$(TERRAFORM) apply -auto-approve