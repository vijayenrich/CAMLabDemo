#####################################################################
##
##      Created 7/10/19 by admin. for camlabproject
##
#####################################################################

variable "user" {
  type = "string"
  description = "Generated"
}

variable "password" {
  type = "string"
  description = "Generated"
}

variable "vsphere_server" {
  type = "string"
  description = "Generated"
}

variable "allow_unverified_ssl" {
  type = "string"
  description = "Generated"
}

variable "vmdemo_name" {
  type = "string"
  description = "Virtual machine name for vmdemo"
}

variable "vmdemo_number_of_vcpu" {
  type = "string"
  description = "Number of virtual cpu's."
}

variable "vmdemo_memory" {
  type = "string"
  description = "Memory allocation."
}

variable "vmdemo_disk_name" {
  type = "string"
  description = "The name of the disk. Forces a new disk if changed. This should only be a longer path if attaching an external disk."
}

variable "vmdemo_disk_size" {
  type = "string"
  description = "The size of the disk, in GiB."
}

variable "vmdemo_template_name" {
  type = "string"
  description = "Generated"
}

variable "vmdemo_datacenter_name" {
  type = "string"
  description = "Generated"
}

variable "vmdemo_datastore_name" {
  type = "string"
  description = "Generated"
}

variable "vmdemo_resource_pool" {
  type = "string"
  description = "Resource pool."
}

