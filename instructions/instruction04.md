Open Google Cloud Shell editor with code of previous example already cloned in it thank to the button below:  
[![Open in Cloud Shell](https://gstatic.com/cloudssh/images/open-btn.svg)](https://shell.cloud.google.com/cloudshell/editor?cloudshell_git_repo=https://github.com/corentinl/terraform-gcp-example-output-.git)

# Prerequisites

In `provider.tf`:
- Make sure to replace <REPLACE_ME_WITH_SERVICE_ACCOUNT_KEY_PATH> with the path to the service account key file you downloaded
- Make sure to replace <REPLACE_ME_WITH_GCP_PROJECT_ID>" with your project's ID

# Goals
The examples we work on so far have used hard-coded values. For this exercise we want to include variables to make our terraform configuration  more dynamic and flexible.

We have the folowing objectives for this example
- Define the instance name with variables
- Define the zone list to use with the instance also with a variable.
- Leverage the variable definition files (.tfvars )


The Terraform documentation on input variables is the following:
- [inputs](https://www.terraform.io/language/values/variables)



# Write some tf configuration

Open variables.tf (or create it if non existent) in your text editor, and declare a variable for instance number
```hcl
variable "instance_count" {
  description = "Number of instances "
  type        = number
  default     = REPLACE_WOTH_NUMBER
}
```

Complete this configuration appropriately.


Open myvar.tfvars (or create it if non existent) in your text editor, and add add the required line for instance_number
```hcl
instance_count = 3

```

Edit your existing main.tf 
```hcl
resource "google_compute_instance" "instance" {
  count        = var.instance_count
  name         = "${var.instance_name}${count.index}"
 }
``` 

Complete this configuration appropriately.


# Execute Terraform

### Initialize Terraform  
(dl required dependencies, init backend conf)  
Not useful if already done on previous lab
```bash
terraform init
```

### Plan
```bash
terraform plan -out theplan -var-file myvar.tfvars   
```
Verify that 2 resources will be provisioned only


### Apply  
When satisfy with the plan run the apply command
```bash
terraform apply theplan
```

Check that your instance is well provisioned according to the input you've defined.


### Destroy (Optional)   
To get rid of all previously provisioned resources run
```bash
terraform destroy
```