
variable "Server_Names" {
    description = "Server names for the supporting servers"
    type = list(string)
    default = ["Vega-System","Mega-Maid"]

}

variable "Server_Templates" {
    description = "Templates Created for the servers"
    type = list(string)
    default = ["Win-SVR22-LinkedClone","Kali-Temp"]

}

variable "Server_BIOS" {
    description = "BIOS used for the servers"
    type = list(string)
    default = ["ovmf","seabios"]

}

variable "Server_MAC" {
    description = "MAC addresses for the supporting servers"
    type = list(string)
    default = ["00:50:56:11:90:10","00:50:56:00:00:41"]

}

variable "Server_NIC_Model" {
    description = "NIC Models for the supporting servers"
    type = list(string)
    default = ["e1000","virtio"]

}

variable "Server_Vlan" {
    description = "NIC Models for the supporting servers"
    type = list(string)
    default = ["192","172"]

}

variable "User_WKS_MAC" {
    description = "MAC addresses for the user windows workstations "
    type = list(string)
    default = ["00:50:56:11:90:21","00:50:56:11:90:22","00:50:56:11:90:23","00:50:56:11:90:24","00:50:56:11:90:25","00:50:56:11:90:26"]

}

variable "User_WKS_Names" {
    description = "MAC addresses for the user windows workstations "
    type = list(string)
    default = ["Planet-Apes","Planet-Spaceball","Planet-Unitopia","Planet-Druidia","Planet-Daj","Planet-Eantra"]

}