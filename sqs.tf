resource "aws_sqs_queue" "terraform_queue" {
  name                      = var.terraform_queue_name
  delay_seconds             = 0
  max_message_size          = 2048
  message_retention_seconds = 86400
  receive_wait_time_seconds = 0
}
