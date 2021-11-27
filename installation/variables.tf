# Set the variable value in *.tfvars file
# or using -var="do_token=..." CLI option
variable "do_token" {
  type        = string
  description = "Your Digital Ocean API Key"
}

variable "region" {
  type        = string
  default     = "fra1"
  description = "The region you want to deploy to"
}
