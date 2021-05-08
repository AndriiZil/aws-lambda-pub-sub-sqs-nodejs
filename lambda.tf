resource "aws_lambda_function" "lambda_consumer" {
  filename         = "lambda.zip"
  function_name    = "lambda_consumer"
  role             = aws_iam_role.lambda_iam_role.arn
  handler          = "consumer.handler"
  source_code_hash = filebase64sha256("./lambda.zip")
  runtime          = "nodejs12.x"
}

resource "aws_lambda_function" "lambda_producer" {
  filename         = "lambda2.zip"
  function_name    = "lambda_producer"
  role             = aws_iam_role.lambda_iam_role.arn
  handler          = "producer.handler"
  source_code_hash = filebase64sha256("./lambda2.zip")
  runtime          = "nodejs12.x"

  environment {
    variables = {
      AWS_ACCOUNT_ID = var.aws_account_id,
      AWS_SQS_QUEUE_NAME = var.aws_sqs_queue_name,
      AWS_REGION_ID = var.aws_region
    }
  }
}
