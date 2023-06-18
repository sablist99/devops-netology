variable "vcd_org_user" {
  description = "vCD Tenant User"
}

variable "vcd_org_password" {
  description = "vCD Tenant Password"
}

variable "vcd_org" {
  description = "vCD Tenant Org"
}

variable "vcd_org_vdc" {
  description = "vCD Tenant VDC"
}

variable "vcd_org_url" {
  description = "vCD Tenant URL"
}

variable "vcd_org_allow_unverified_ssl" {
  default = "true"
}

variable "vcd_org_max_retry_timeout" {
  default = "60"
}

variable "ram" {
  description = "RAM memory in Mb"
  default = "2048"
}

variable "cpu" {
  description = "CPU numbers"
  default = "2"
}

variable "hdd" {
  description = "HDD size in Mb"
  default = "25000"
}

variable "core" {
  description = "number of cores per CPU"
  default = "1"
}

variable "power_on" {
  description = "On/off power on create vm"
  default = "true"
}

variable "vcd_template_os" {
  description = "OS Template"
  default = "UbuntuPotap"
}

variable "vm_count" {
  description = "Number of vm hosts"
  default = "1"
}

variable "vcd_org_catalog" {
  description = "vCD Tenant Templates catalog"
  default = "Potap"
}
