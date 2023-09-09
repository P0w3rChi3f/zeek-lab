
variable "Server_Names" {
    description = "Server names for the supporting servers"
    type = list(string)
    default = ["Research-DC","Research-Mail","Research-DHCP","Research-Web","Research-ELK","Attacker"]

}

variable "Server_Templates" {
    description = "Templates Created for the servers"
    type = list(string)
    default = ["Win-SVR22-LinkedClone","Ubuntu-server-template","CentOS-9-Temp","CentOS-9-Temp","Ubuntu-server-template","Kali-Temp"]

}

variable "Server_Disks" {
    description = "Disks used for the servers"
    type = list(string)
    default = ["sata0","scsi0","scsi0","scsi0","scsi0","sata0"]

}

variable "Server_BIOS" {
    description = "BIOS used for the servers"
    type = list(string)
    default = ["ovmf","seabios","seabios","seabios","seabios","seabios"]

}

variable "Server_MAC" {
    description = "MAC addresses for the supporting servers"
    type = list(string)
    default = ["00:50:56:11:90:10","00:50:56:11:90:11","00:50:56:11:90:12","00:50:56:11:90:13","00:50:56:11:90:14","00:50:56:00:00:41"]

}

variable "Server_NIC_Model" {
    description = "NIC Models for the supporting servers"
    type = list(string)
    default = ["e1000","virtio","virtio","virtio","virtio","virtio"]

}

variable "ProxMox_Bridge_Assignments" {
    description = "Bridge assignments for the supporting servers"
    type = list(string)
    default = ["vmbr1","vmbr1","vmbr1","vmbr1","vmbr1","vmbr1"]

}

variable "Server_Vlan" {
    description = "NIC Models for the supporting servers"
    type = list(string)
    default = ["192","192","192","192","192","172"]

}

variable "User_WKS_MAC" {
    description = "MAC addresses for the user windows workstations "
    type = list(string)
    default = ["00:50:56:11:90:21","00:50:56:11:90:22","00:50:56:11:90:23","00:50:56:11:90:24"]

}

variable "User_WKS_Names" {
    description = "MAC addresses for the user windows workstations "
    type = list(string)
    default = ["Research-Wks01","Research-Wks02","Research-Wks03","Research-Wks04"]

}