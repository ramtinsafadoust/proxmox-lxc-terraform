terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "2.9.13"
    }
  }
}

provider "proxmox" {
  pm_debug            = true
  pm_api_url          = var.api_url
  pm_api_token_id     = var.api_token_id
  pm_api_token_secret = var.api_token_secret
  pm_tls_insecure     = true
}



resource "proxmox_lxc" "ubuntu" {
  target_node  = var.target_node
  hostname     = var.hostname
  ostemplate   = var.ostemplate
  password     = var.ospassword
  unprivileged = false
  memory       = var.memory
  swap         = var.swap
  cores        = var.cpucore
  cpulimit     = var.cpulimit
  onboot       = var.startonboot
  start        = true
  tags         = var.tag
  nameserver   = var.dns

  // Terraform will crash without rootfs defined
  rootfs {
    storage = var.storagelocation
    size    = var.disksize
  }

  network {
    name   = var.network_adapter
    bridge = var.pve_bridge
    ip     = var.ip

    gw = var.gateway
  }
}