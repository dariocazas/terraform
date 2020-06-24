# MongoDB Terraform Atlas Provider

The MongoDB Atlas provider is used to interact with the resources supported by
MongoDB Atlas.

## Important Notes
 
- Free tier cluster creation (M0) is not supported via API or by this Provider
  (note 2020-06-24).
- Promo code: GETATLAS (save $100)
    - However, to create cluster you should be add a payment method in you Atlas
      Organization.

## Parts

- main.tf: is the key terraform file. This specify the provider
- variables.tf: define variables used in the rest of files
- vars/dev.tfvars: define values for variables defined
- project.tf: define a project for your Atlas organization
- cluster.tf: define you cluster
- user.tf: define an user

Review terraform resources to see more else configurations.

## Environment vars

```sh
export MONGODB_ATLAS_PUBLIC_KEY="xxxx"
export MONGODB_ATLAS_PRIVATE_KEY="xxxx"
export TF_VAR_organization_id="xxx" 
export TF_VAR_team_owner_id="xxx"
export TF_VAR_ip_whitelist="$(dig +short myip.opendns.com @resolver1.opendns.com)"

```

For more information on configuring and managing programmatic API Keys see the
[MongoDB Atlas
Documentation](https://docs.atlas.mongodb.com/tutorial/manage-programmatic-access/index.html).

The vars with prefix TF_VAR_ directly references the
[variables.tf](./variables.tf) declared vars. Review associated doc in this
file.

## Run 

**IMPORTANT**: you MUST KEEP SAVE the tfstate file created by terraform command
`apply`. Terraform documentation describe several backends to manage it, or you
can save the file manually.

To create (this action can take 10 min)
```sh
terraform init
terraform validate
terraform plan -var-file="vars/dev.tfvars" -out plan.tfplan
terraform apply "plan.tfplan"
```

To see a configured infrastructure (asigned default config, id generated, etc)
```sh
terraform show
```

To check or apply changes:
```sh
terraform validate
terraform plan -var-file="vars/dev.tfvars" -out plan.tfplan
terraform apply "plan.tfplan"
```

To destroy it:
```sh
terraform destroy -var-file="vars/dev.tfvars"
```


## References

- [MongoDB && HashiCorp
  Terraform](https://www.mongodb.com/atlas/hashicorp-terraform)
- [Terraform Atlas
  Provider](https://www.terraform.io/docs/providers/mongodbatlas/index.html)
