variable "api_url" {
  description = "ProxMox VE API endpoint Address"
  type        = string
}

variable "api_token_id" {
  description = "Proxmox api token id"
  type        = string

}
variable "api_token_secret" {
  description = "Proxmox api token secret"
  type        = string
}
variable "target_node" {
  description = "Target Node on Proxmox VE"
  type        = string
}

variable "hostname" {
  description = "your machine hostname"
  type        = string
}

variable "ostemplate" {
  description = "address of os template on your VE"
  type        = string
}
variable "ospassword" {
  description = "password of root"
  type        = string
}

variable "memory" {
  description = "input memory in MB"
  type        = number
}
variable "swap" {
  description = "swap size in MB"
  type        = number
}
variable "cpucore" {
  description = "count of cpu cores"
  type        = number
}
variable "cpulimit" {
  description = "count of max cpu"
  type        = number
}
variable "startonboot" {
  description = "do you want start this machine at server boot ? true/false"
  type        = bool
}
variable "startaftercreate" {
  description = "do you want start this machine after created ? true/false"
  type        = bool
}
variable "tag" {
  description = "tag of this machine on PVE"
  type        = string
}
variable "dns" {
  description = "list of dns nameservers"
  type        = string
}
variable "storagelocation" {
  description = "storage location on PVE"
  type        = string
}
variable "disksize" {
  description = "size of disk"
  type        = string
}
variable "network_adapter" {
  description = "network adapter"
  type        = string
}
variable "pve_bridge" {
  description = "your PVE bridge netwok"
  type        = string
}
variable "ip" {
  description = "ip and subnet"
  type        = string
}
variable "gateway" {
  description = "vm gateway"
  type        = string
}
variable "pm_tls" {
  description = "connect with/without tls to your pve"
  type        = bool
}