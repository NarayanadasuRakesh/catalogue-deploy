environment = "prod"

variable "common_tags" {
  type = map
  default = {
    Project     = "roboshop"
    Environment = "prod"
    Terraform   = true
  }
}