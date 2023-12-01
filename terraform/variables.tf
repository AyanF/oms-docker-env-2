variable "AMI" {
description = "The AMI to use for the instance"
  type        = string
  default     = "ami-00277a87b87c84d18"
}
variable "EC2_INSTANCE_TYPE" {
description = "Value of the Instance configuration"
  type        = string
  default     = "c5a.xlarge"
}
variable "az_zone" {
description = "Availability Zone the instance is launched in"
  type        = string
  default     = "us-west-2a"
}
variable "EC2_ROOT_VOLUME_SIZE" {
description = "Value of the Instance storage size"
  type        = string
  default     = "90"
}
variable "INSTANCE_NAME" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "moqui-instance"
}


