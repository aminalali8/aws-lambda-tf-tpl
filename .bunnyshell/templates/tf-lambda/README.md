# AWS Lambda Terraform Template (Bunnyshell)

This template provisions an AWS Lambda function and an API Gateway using Terraform on Bunnyshell. It automates the deployment of an AWS Lambda function with customizable runtime, handler, environment variables, and integration with API Gateway.

## Requirements

Before deploying this template, ensure you have the following environment variables set:

- `AWS_ACCESS_KEY_ID`: Your AWS access key ID.
- `AWS_SECRET_ACCESS_KEY`: Your AWS secret access key.
- `AWS_DEFAULT_REGION`: The AWS region where the Lambda function will be created.
- `AWS_SESSION_TOKEN` (Optional): Temporary session token if using temporary credentials.

These environment variables are required to authenticate with AWS and provision the resources.

## Template Configuration

This template is configured through the following variables in the `Bunnyshell YAML Configuration`:

- **lambda_function_name**: A unique name for your Lambda function.
- **lambda_runtime**: The runtime environment for your Lambda function (e.g., `nodejs18.x`, `python3.9`, `java11`).
- **lambda_handler**: The entry point (handler) for your Lambda function (e.g., `index.handler`).
- **lambda_zip_file**: The path to the ZIP file that contains your Lambda function code.
- **lambda_environment_variables**: A map of environment variables for the Lambda function.
- **cloudwatch_log_retention**: The number of days to retain CloudWatch logs for your Lambda function.
- **api_gateway_name**: A unique name for the API Gateway.
- **api_gateway_stage_name**: The deployment stage name for API Gateway (e.g., `dev`, `prod`).

## Usage

### 1. Deploy the Environment

1. Clone this repository and ensure all necessary environment variables are set in Bunnyshell.
2. Customize the template variables in the `Bunnyshell YAML Configuration` to suit your use case.
3. Deploy the environment using Bunnyshell's Terraform runner.

During deployment, the following steps are automatically executed:
- A `terraform.tfvars` file is dynamically created with the provided template variables.
- Terraform initializes and applies the configuration, provisioning the AWS Lambda function and API Gateway.

### 2. Destroy the Environment

If you wish to destroy the Lambda function and related resources:
- Bunnyshell will create the appropriate `terraform.tfvars` file and run the `terraform destroy` command to clean up resources.

### Example Terraform Configuration

The Terraform script automatically generated during deployment will look like this:

```hcl
lambda_function_name       = "my_custom_lambda"
lambda_runtime             = "python3.9"
lambda_handler             = "lambda_function.lambda_handler"
lambda_zip_file            = "path/to/your/lambda.zip"
lambda_environment_variables = {
  foo = "bar"
  env = "production"
}
cloudwatch_log_retention   = 14
api_gateway_name           = "my-lambda-api"
api_gateway_stage_name     = "prod"
```

## Bunnyshell Components

- **Kind**: `Terraform`
- **Runner Image**: `hashicorp/terraform:1.5`
- **Git Repo**: `https://github.com/aminalali8/aws-lambda-tf-tpl.git`
- **Git Branch**: `main`

### Deployment Commands:

- The `terraform.tfvars` file is dynamically populated with the template variables during deployment.
- Terraform initializes and applies the configuration, provisioning the Lambda function and API Gateway.
- The Terraform backend is managed by Bunnyshell to ensure state management and seamless deployments.

### Destruction Commands:

- The same process is followed to destroy the resources by populating a `terraform.tfvars` file and running `terraform destroy`.

## Notes

- The Lambda function is created with customizable runtime, environment variables, and API Gateway integration.
- You can switch between various Lambda runtimes (`nodejs`, `python`, `java`, etc.) by changing the `lambda_runtime` variable.
- Ensure that the ZIP file containing the Lambda code is correctly referenced in `lambda_zip_file`.
