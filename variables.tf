variable "aws_account_owner" {
  type = string
  default = "465641079673"
}

variable "aws_instance_type" {
  type = string
  default = "t3.micro"
}

variable "cf_token" {
  type = string
}

variable "cf_zone_id" {
  type = string  
  default = "c5b5f03d63c1b8876685b31bae0fec4d"
}

variable "cf_domain" {
  type = string
  default = "diegoneves.eti.br"
}

variable "cf_record_name" {
  type = string
  default = "iac2"
}

variable "cf_record_type" {
  type = string
  default = "A"
}

variable "cf_proxied" {
  type = bool
  default = false
}