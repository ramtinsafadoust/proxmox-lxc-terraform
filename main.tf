



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
  start        = var.startaftercreate
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