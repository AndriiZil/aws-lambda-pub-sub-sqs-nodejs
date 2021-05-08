output "aws_arn" {
  value = aws_sqs_queue.terraform_queue.arn
}

output "aws_queue_url" {
  value = aws_sqs_queue.terraform_queue.id
}
