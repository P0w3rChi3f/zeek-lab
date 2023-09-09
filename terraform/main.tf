terraform {
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "2.9.11"
    }
  }
}

provider "proxmox" {
    pm_api_url = "https://pve.honeycutthomenet.local:8006/api2/json"
    pm_api_token_id = "terraform-prov@pve!TerraformProvisioning"
    pm_api_token_secret = "7df19234-6fab-4e2c-aed2-bbfd755e7346"

    pm_tls_insecure = true
}

resource "proxmox_vm_qemu" "Servers" {
  count = 2
  name = "${var.Server_Names[count.index]}"
  target_node = "pve"
  clone = "${var.Server_Templates[count.index]}"
  full_clone = false
  bootdisk = "sata0"
  bios = "${var.Server_BIOS[count.index]}"
  oncreate = true
  memory = 4096
  sockets = 4
  boot = "cdn"
  #agent = 1
  force_create = true
  network {
      macaddr = "${var.Server_MAC[count.index]}"
      model = "${var.Server_NIC_Model[count.index]}"
      bridge = "vmbr1"
      firewall = "false"
      tag = "${var.Server_Vlan[count.index]}"
  } 
}

resource "proxmox_vm_qemu" "Clients" {
  count = 6
  name = "${var.User_WKS_Names[count.index]}"
  target_node = "pve"
  clone = "Research-Temp"
  full_clone = false
  bootdisk = "sata0"
  bios = "ovmf"
  oncreate = true
  memory = 4096
  sockets = 4
  boot = "cdn"
  #agent = 1
  force_create = true
  network {
      macaddr   = "${var.User_WKS_MAC[count.index]}"
      model     = "e1000"
      bridge = "vmbr1"
      firewall = "false"
      tag       = "192"
  }
}

