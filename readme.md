# Create PCS vNet and Subnets

This code is used to create a vNet and six subnets and then test the infrastructure (networks) that were created.

Requirements:

+ Terraform 0.11.3
+ Access to the VSTS code repository to access the core module. 

1. Navigate to:

    https://felixcloudservices007.visualstudio.com/felixcloudservices/_git/PCS_NETWORKS

2. Login with your ctplab account

3. Download the code as zip locally or clone the repo.

4. Download the Windows 2016 version of inspec 2.0 from the following site.

    https://downloads.chef.io/inspec

5. Install defaults.

6. Open a new command prompt and navigate to the source code that you downloaded and run the following to deploy the infrasrtucture.

## Usage

### 0. Set Workspace variables

Set the relevant workspace variables in a workspace file that maps to your workspace or the relevant workspace see the existing examples. These will ensure that the relevant enteries are supplied when using workspaces. 

### 1. Test Code

terraform validate 

### 2. Test Plan 

terraform plan

### 3. Set workspaces

Either create a new workspace or select one that already exists. 

##### 3.1 Create new workspace if it does not exist.

terraform workspace new pauls 

##### 3.2 Select an existing workspace 

terraform workspace select pauls 

### 4. Deploy Infrastructure 

terraform apply --auto-approve

### 5. Test Infrastructure 

You will need to run inspec and have the credentials setup for inspec to log into azure. For testing purposes we will do the following with the credentials as described below. There are other options that we will use for proudction and in the future.

#### Credentials File

The simplest way is to create the file `c:/users/<username>/.azure/credentials` with the following format. The profile is configured to look for this file by default do no settings are required.

```
[<SUBSCRIPTION_ID>]
client_id = "<CLIENT_ID>"
client_secret = "<CLIENT_SECRET>"
tenant_id = "<TENANT_ID>"
```

To run the test now it is as simple as running the command below from the test\integration\verify folder:

```

inspec exec pcs-networks -t azure://


```







