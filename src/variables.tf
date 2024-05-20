variable "aws_profile" {
  description = "Region to deploy the Infrastructure."
  type        = string
  nullable    = false
}

variable "aws_region" {
  description = "Region to deploy the Infrastructure."
  type        = string
  nullable    = false
}

variable "aws_vpc_name" {
  description = "Region to deploy the Infrastructure."
  type        = string
  nullable    = false
}
variable "aws_vpc_cidr" {
  description = "Region to deploy the Infrastructure."
  type        = string
  nullable    = false
}

variable "aws_vpc_azs" {
  description = "Region to deploy the Infrastructure."
  type        = set(string)
  nullable    = false
}

variable "aws_vpc_private_subnet" {
  description = "Region to deploy the Infrastructure."
  type        = set(string)
  nullable    = false
}

variable "aws_vpc_public_subnet" {
  description = "Region to deploy the Infrastructure."
  type        = set(string)
  nullable    = false
}

variable "aws_eks_name" {
  description = "Region to deploy the Infrastructure."
  type        = string
  nullable    = false
}

variable "aws_eks_version" {
  description = "Region to deploy the Infrastructure."
  type        = string
  nullable    = false
}

variable "aws_eks_managed_node_groups_instance_types" {
  description = "Region to deploy the Infrastructure."
  type        = set(string)
  nullable    = false
}

variable "aws_project_tags" {
  description = "Region to deploy the Infrastructure."
  type        = map(any)
  nullable    = false
}
