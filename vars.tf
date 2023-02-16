variable "api_url" {
  description = "ProxMox VE API endpoint Address"
}

variable "api_token_id" {
  description = "Proxmox api token id"

}
variable "api_token_secret" {
  description = "Proxmox api token secret"
}
variable "target_node" {
  description = "Target Node on Proxmox VE"
}

variable "hostname" {
  description = "your machine hostname"
}

variable "ostemplate" {
  description = "address of os template on your VE"
}
variable "ospassword" {
  description = "password of root"
}

variable "memory" {
  description = "input memory in MB"
}
variable "swap" {
  description = "swap size in MB"
}
variable "cpucore" {
  description = "count of cpu cores"
}
variable "cpulimit" {
  description = "count of max cpu"
}
variable "startonboot" {
  description = "do you want start this machine at server boot ? true/false"
}
variable "startaftercreate" {
  description = "do you want start this machine after created ? true/false"
}
variable "tag" {
  description = "tag of this machine on PVE"

}
variable "dns" {
  description = "list of dns nameservers"
}
variable "storagelocation" {
  description = "storage location on PVE"
}
variable "disksize" {
  description = "size of disk"
}
variable "network_adapter" {
  description = "network adapter"
}
variable "pve_bridge" {
  description = "your PVE bridge netwok"
}
variable "ip" {
  description = "ip and subnet"
}
variable "gateway" {
  description = "vm gateway"
}
variable "pm_tls" {
  description = "connect with/without tls to your pve"

}