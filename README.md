# Terraform & GitHub: Creating a Repository with Terraform (Repo Surplus)

## Prerequisites

### Installation

1. Install [VSCodium](https://vscodium.com/) or [VSCode](https://code.visualstudio.com/).

2. Install [Terraform](https://developer.hashicorp.com/terraform/install).

3. Ensure that Terraform is installed and available in the Terminal:

```shell
terraform -v
```

You should see the current version of Terraform installed.

### Acquiring GitHub Token

Follow this guide to [creatin a personal access token (classic)](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens) on GitHub. You will also need your GitHub username.

Store these keys in a secure location. This is your authentication for your identity on AWS!

## Terraform

1. Create a `local.auto.tfvars` file from the [local.auto.tfvars.example](./local.auto.tfvars.example) file.
2. Add your GitHub username and token here as strings.
3. In your Terminal, ensure you are in the repo directory, then run in order:

```hcl
terraform init
```

This will initialize your Terraform and download the correct files after scanning your Terraform code.

```hcl
terraform plan
```

This will show you the services and architecture that you are instructing Terraform to build in your code.

```hcl
terraform apply
```

This will apply your changes to GitHub after you confirm the selection.

**Go to the URL's that were outputs. They should point to the new repos you created!**

Now, in your Terminal, ensure you are deleting your test repos with:

```hcl
terraform destroy
```

This will destroy all of your GitHub architecture that is stored in your Terraform [terraform.tfstate](./terraform.tfstate) file.

> **Note**: If you created any services in GitHub, or anything not tracked within your [terraform.tfstate](./terraform.tfstate) file, these resources will not be deleted with Terraform.
