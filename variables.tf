variable "lambda_function_name" {
  description = "The name of the Lambda function."
  default     = "example_lambda"
}

variable "lambda_runtime" {
  description = "The runtime for the Lambda function."
  type        = string
  default     = "nodejs18.x"

  validation {
    condition     = contains(["nodejs18.x", "nodejs16.x", "python3.9", "python3.8", "java11", "go1.x"], var.lambda_runtime)
    error_message = "The specified runtime is not valid. Allowed values are: nodejs18.x, nodejs16.x, python3.9, python3.8, java11, go1.x."
  }
}

variable "lambda_handler" {
  description = "The handler method for the Lambda function."
  default     = "index.handler"
}

variable "lambda_zip_file" {
  description = "The path to the Lambda zip file."
  default     = "lambda.zip"
}

variable "lambda_environment_variables" {
  description = "Environment variables for the Lambda function."
  type        = map(string)
  default     = {
    foo = "bar"
  }
}

variable "cloudwatch_log_retention" {
  description = "The number of days to retain CloudWatch logs."
  default     = 1
}

variable "api_gateway_name" {
  description = "The name of the API Gateway."
  default     = "lambda-api"
}

variable "api_gateway_stage_name" {
  description = "The stage name for the API Gateway deployment."
  default     = "dev"
}