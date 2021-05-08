variable "terraform_queue_arn" {
  default = "arn:aws:sqs:eu-central-1:081578102896:terraform-example-queue"
}

variable "terraform_queue_url" {
  default = "https://sqs.eu-central-1.amazonaws.com/081578102896/terraform-example-queue"
}

variable "terraform_queue_name" {
  default = "terraform-example-queue"
}

variable "aws_region" {
  default = "eu-central-1"
}

variable "aws_account_id" {
  default = "081578102896"
}

variable "aws_sqs_queue_name" {
  default = "terraform-example-queue"
}
