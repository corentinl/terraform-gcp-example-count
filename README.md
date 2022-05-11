# Terraform basic example #3<br>Terraform input on Google Cloud Platform  

*refer to [tutorials/terraform/input](https://www.terraform.io/language/meta-arguments/count)*

## Execution environment

Save you some time and use your own Google cloud shell environment:

[![Open in Cloud Shell](https://gstatic.com/cloudssh/images/open-btn.svg)](https://shell.cloud.google.com/cloudshell/editor?cloudshell_git_repo=https://github.com/corentinl/terraform-gcp-example-count.git)

## Prerequisite
 - Verify that terraform is available on your Cloud shell env  
 `> terraform --version`  
 - Have a Google cloud project with billing enabled
 - create manually (through cloud console) a service account that will be used by terraform
 >Select the project you created in the previous step.  
 >Click "Create Service Account".  
 >Give it any name you like and click "Create".  
 >For the Role, choose "Project -> Editor" (bad practice follow least privilege standard), then click "Continue".  
 >Skip granting additional users access, and click "Done".  
 >After you create your service account, download your service account key.  
 - create manually (through cloud console) a json credentials key for your service account  
 >Select your service account from the list.  
 >Select the "Keys" tab.  
 >In the drop down menu, select "Create new key".  
 >Leave the "Key Type" as JSON.  
 >Click "Create" to create the key and save the key file to your system.  
 >You can read more about service account keys in [Google's documentation](https://cloud.google.com/iam/docs/creating-managing-service-account-keys).

## Update placeholder with your own data

Within `provider.tf` replace the following placeholder with your GCP project ID and path to your json service account key.
- <REPLACE_ME_WITH_SERVICE_ACCOUNT_KEY_PATH>
- <REPLACE_ME_WITH_GCP_PROJECT_ID>


## Lab instructions

Follow instructions in instructions folder of this repository [instruction04.md](https://github.com/corentinl/terraform-gcp-example-count/blob/main/instructions/instruction04.md)

