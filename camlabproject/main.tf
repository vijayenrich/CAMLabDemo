#####################################################################
##
##      Created 7/10/19 by admin. for camlabproject
##
#####################################################################

terraform {
  required_version = "> 0.8.0"
}

provider "vsphere" {
  user           = "${var.user}"
  password       = "${var.password}"
  vsphere_server = "${var.vsphere_server}"

  allow_unverified_ssl = "${var.allow_unverified_ssl}"
  version = "~> 1.2"
}


data "vsphere_virtual_machine" "vmdemo_template" {
  name          = "${var.vmdemo_template_name}"
  datacenter_id = "${data.vsphere_datacenter.vmdemo_datacenter.id}"
}

data "vsphere_datacenter" "vmdemo_datacenter" {
  name = "${var.vmdemo_datacenter_name}"
}

data "vsphere_datastore" "vmdemo_datastore" {
  name          = "${var.vmdemo_datastore_name}"
  datacenter_id = "${data.vsphere_datacenter.vmdemo_datacenter.id}"
}

resource "vsphere_virtual_machine" "vmdemo" {
  name          = "${var.vmdemo_name}"
  datastore_id  = "${data.vsphere_datastore.vmdemo_datastore.id}"
  num_cpus      = "${var.vmdemo_number_of_vcpu}"
  memory        = "${var.vmdemo_memory}"
  guest_id = "${data.vsphere_virtual_machine.vmdemo_template.guest_id}"
  resource_pool_id = "${var.vmdemo_resource_pool}"
  clone {
    template_uuid = "${data.vsphere_virtual_machine.vmdemo_template.id}"
  }
  disk {
    name = "${var.vmdemo_disk_name}"
    size = "${var.vmdemo_disk_size}"
  }
}