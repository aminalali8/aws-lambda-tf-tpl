# AWS Lambda Terraform Template Repository

This repository contains a collection of Terraform configurations for deploying AWS Lambda functions, along with integration for Bunnyshell environments.

## Structure

The files in this repository are organized as follows:

- `.bunnyshell/`: Contains the Bunnyshell environment templates.
  - `templates/tf-lambda/`: Includes the AWS Lambda Terraform configuration files.
    - `readme.md`: Detailed instructions for using the AWS Lambda Terraform template on Bunnyshell.

## Contents

- **Terraform Files**: The main Terraform files (`main.tf`, `providers.tf`, `outputs.tf`, `variables.tf`) for deploying an AWS Lambda function and API Gateway integration.
- **Bunnyshell Configuration**: Template files and configuration for running the Terraform scripts in a Bunnyshell environment.
- **Readme for Lambda Template**: You can find detailed instructions for the AWS Lambda template under `.bunnyshell/templates/tf-lambda/readme.md`.

## Usage

1. **Deploy with Bunnyshell**:
   - The Bunnyshell configuration and template for AWS Lambda are located under `.bunnyshell/templates/tf-lambda/`.
   - Refer to the [AWS Lambda Template README](.bunnyshell/templates/tf-lambda/readme.md) for more details on deploying the template.

2. **Modify the Terraform Configuration**:
   - Customize the Terraform files within the `tf-lambda` folder if you need to adjust settings like Lambda function name, runtime, or environment variables.

3. **Set up the Environment**:
   - Make sure to provide the necessary AWS credentials (`AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`, and `AWS_DEFAULT_REGION`) to deploy the resources.

## Requirements

- **Terraform**: Ensure you have Terraform installed to run the configurations locally.
- **AWS Account**: AWS credentials are required to deploy the Lambda function.
- **Bunnyshell Account**: This template is built for easy integration with Bunnyshell.

## License

This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
