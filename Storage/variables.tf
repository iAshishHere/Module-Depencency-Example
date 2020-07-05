
#### These are the variable used in CloudStorage module -> main.tf
variable "project" {
  type = string
}
variable "names" {
  type = list
}

variable "locations" {
  type = list
}

variable "storage_classes" {
  type = list
}
