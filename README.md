
# Proxmox LXC Terraform Module

This Terraform module automates the creation and configuration of LXC containers on Proxmox Virtual Environment (PVE). It allows you to define container parameters such as OS template, CPU, memory allocation, network settings, and storage configuration, simplifying the deployment and management of LXC containers on your Proxmox node.

## Features

- **Automated LXC Creation**: Provision LXC containers on Proxmox with customizable settings.
- **Flexible Configuration**: Easily modify resource allocation, storage, and networking options.
- **Variables**: Define container attributes using simple variables for greater flexibility.

## Prerequisites

To use this Terraform module, you must have the following:

1. **Terraform** installed. You can download it [here](https://www.terraform.io/downloads.html).
2. **Proxmox Virtual Environment** (PVE) with API access.
3. **Git** to clone the repository or download the project directly.

## Setup

1. Clone this repository:
   ```bash
   git clone https://github.com/ramtinsafadoust/proxmox-lxc-terraform.git
   cd proxmox-lxc-terraform
   ```

2. **Configure Variables**: Modify the `terraform.tfvars` or directly configure variables in `vars.tf` to customize container settings like hostname, OS template, network settings, etc.

3. **Initialize Terraform**: Initialize the project.
   ```bash
   terraform init
   ```

4. **Apply the Configuration**: Create the LXC container based on your defined variables.
   ```bash
   terraform apply
   ```

5. **Verify**: Once applied, verify the container's creation in Proxmox.

## Example Usage

```hcl
module "ubuntu_lxc" {
  source        = "./"
  target_node   = "pve1"
  hostname      = "ubuntu-container"
  ostemplate    = "ubuntu-20.04-standard"
  ospassword    = "password123"
  unprivileged  = true
  memory        = 2048
  swap          = 1024
  cpucore       = 2
  cpulimit      = 0
  startonboot   = true
  startaftercreate = true
  tag           = ["webserver"]
  dns           = ["8.8.8.8", "8.8.4.4"]
  storagelocation = "local"
  disksize      = 10
  network_adapter = "eth0"
  pve_bridge    = "vmbr0"
  ip            = "192.168.1.100"
  gateway       = "192.168.1.1"
}
```

## Variables

| Variable          | Description                                         | Default Value   |
|-------------------|-----------------------------------------------------|-----------------|
| `target_node`     | Proxmox node to deploy the container.               | `pve1`          |
| `hostname`        | Hostname of the LXC container.                      | `ubuntu-lxc`    |
| `ostemplate`      | The OS template for the container.                  | `ubuntu-20.04`  |
| `ospassword`      | Root password for the container.                    | `password123`   |
| `unprivileged`    | Set to `true` for unprivileged container.           | `false`         |
| `memory`          | Memory allocation in MB.                            | `2048`          |
| `swap`            | Swap space allocation in MB.                        | `1024`          |
| `cpucore`         | CPU cores allocated.                                | `2`             |
| `cpulimit`        | CPU usage limit.                                    | `0`             |
| `startonboot`     | Whether to start on boot.                           | `true`          |
| `startaftercreate`| Whether to start container immediately after creation. | `true`         |
| `tag`             | Tags for the container.                             | `["webserver"]` |
| `dns`             | DNS servers for the container.                      | `["8.8.8.8", "8.8.4.4"]` |
| `storagelocation` | Storage location for root filesystem.               | `local`         |
| `disksize`        | Size of the root disk in GB.                        | `10`            |
| `network_adapter` | Network adapter name (e.g., `eth0`).                | `eth0`          |
| `pve_bridge`      | Proxmox bridge to use (e.g., `vmbr0`).              | `vmbr0`         |
| `ip`              | IP address for the container.                       | `192.168.1.100`|
| `gateway`         | Gateway IP address for the container.               | `192.168.1.1`  |

## License

This project is licensed under the GPL-3.0 License.
