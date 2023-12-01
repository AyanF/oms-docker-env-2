variable "AMI" {
description = "The AMI to use for the instance"
  type        = string
  default     = "ami-032ee1d9ab851471f"
}
variable "EC2_INSTANCE_TYPE" {
description = "Value of the Instance configuration"
  type        = string
  default     = "c5a.xlarge"
}
variable "az_zone" {
description = "Availability Zone the instance is launched in"
  type        = string
  default     = "us-east-1d"
}
variable "EC2_ROOT_VOLUME_SIZE" {
description = "Value of the Instance storage size"
  type        = string
  default     = "90"
}
variable "INSTANCE_NAME" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "omsinstance"
}
#CloudWatch
variable "alarm_name" {
description = "The AMI to use for the instance"
  type        = string
  default     = "ec2-cpu-alarm"
}
variable "sns_topic_name" {
  description = "CloudWatch SMS Topic Name"
  default     = "arn:aws:sns:us-east-1:289432782788:Sandeep"
}
