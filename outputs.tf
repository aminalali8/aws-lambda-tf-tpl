output "lambda_function_name" {
  value = aws_lambda_function.lambda_function.function_name
}

output "api_gateway_url" {
  value = "${aws_api_gateway_rest_api.lambda_api.execution_arn}/lambda"
}