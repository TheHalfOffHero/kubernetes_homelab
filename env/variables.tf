/*
    General Proxmox Vars
*/

variable "pm_user" {
  description = "The username for the proxmox user"
  type        = string
  sensitive   = false
  default     = "terraform-prov@pve"

}
variable "pm_password" {
  description = "The password for the proxmox user"
  type        = string
  sensitive   = true
  default     = "P@ssw0rd"
}

variable "pm_tls_insecure" {
  description = "Set to true to ignore certificate errors"
  type        = bool
  default     = true
}

variable "pm_host" {
  description = "The hostname or IP of the proxmox server"
  type        = string
  default     = "proxmox"
}

variable "pm_node_name" {
  description = "name of the proxmox node to create the VMs on"
  type        = string
  default     = "Gandalf"
}

variable "pvt_key" {
  description = "private key file"
  type        = string
  default     = "none"
}


/*
    Master/Controller Vars
*/
variable "num_masters" {
  description = "Enter the number of Master/controller VMs you want"
  default     = 3
}

variable "num_masters_mem" {
  description = "Enter the value for the amount of RAM for your masters. ie. 4096"
  default     = "4096"
}

variable "master_disk_size" {
  description = "Enter the size of your Master node disks ie. 80G"
  type        = string
  default     = "10G"
}

variable "master_disk_type" {
  description = "What interface type are you using? ie. scsi"
  type        = string
  default     = "scsi"
}

variable "master_disk_location" {
  description = "Where do you want to store the disk on your host? ie. zfs-mirror, local, local-lvm, etc."
  type        = string
  default     = "local-lvm"
}

/*
    General Proxmox Vars
*/

variable "num_nodes" {
  description = "Enter the number of VMs you want for worker nodes."
  default     = 3
}

variable "num_nodes_mem" {
  description = "Enter the value for the amount of RAM for your worker nodes. ie. 2048"
  default     = "2048"
}

variable "node_disk_size" {
  description = "Enter the size of your Master node disks ie. 80G"
  type        = string
  default     = "10G"
}

variable "node_disk_type" {
  description = "What interface type are you using? ie. scsi"
  type        = string
  default     = "scsi"
}

variable "node_disk_location" {
  description = "Where do you want to store the disk on your host? ie. zfs-mirror, local, local-lvm, etc."
  type        = string
  default     = "local-lvm"
}

variable "template_vm_name" {
  description = "Name of the template VM"
  type        = string
  default     = "temp-ubuntu-22-04"
}

variable "master_ips" {
  description = "List of ip addresses for master nodes"
  type        = list(string)
  default = [
    "192.168.1.40",
    "192.168.1.41",
    "192.168.1.42"
  ]
}

variable "worker_ips" {
  description = "List of ip addresses for worker nodes"
  type        = list(string)
  default = [
    "192.168.1.50",
    "192.168.1.51",
    "192.168.1.52"
  ]
}

variable "networkrange" {
  description = "Enter as 8,16,22,24,etc. hint: 10.0.0.0/8"
  default     = "24"
}

variable "gateway" {
  description = "Enter your network gateway."
  default     = "192.168.1.1"
}