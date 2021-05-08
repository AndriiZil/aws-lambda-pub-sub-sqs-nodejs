resource "aws_lambda_event_source_mapping" "event_source_mapping" {
  event_source_arn = var.terraform_queue_arn
  enabled          = true
  function_name    = aws_lambda_function.lambda_consumer.arn
  batch_size       = 1
}
