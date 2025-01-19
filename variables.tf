
variable "esxi_hostname" {
  default = "192.168.1.4"
}

variable "esxi_hostport" {
  default = "22"
}

variable "esxi_hostssl" {
  default = "443"
}

variable "esxi_username" {
  default = "root"
}

variable "esxi_password" {
  default = "Mizoo@98"
}

variable "virtual_network" {
  default = "VM Network"
}

variable "disk_store" {
  default = "datastore1"
}

variable "ssh_username" {
  default = "root"
}

variable "ovf_file" {
  default = "https://cloud-images.ubuntu.com/releases/24.10/release/ubuntu-24.10-server-cloudimg-amd64.ova" 
}


variable "public_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIO35Ukwf4fH+CLtg7oK/bTEQGy4EmT2odDfQdoLecTx8"
}
