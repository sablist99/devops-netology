data "vcd_catalog" "my-tmpl-cat" {
  org = var.vcd_org
  name = var.vcd_org_catalog
}

data "vcd_catalog_vapp_template" "vappTmpl" {
  org = var.vcd_org
  catalog_id = data.vcd_catalog.my-tmpl-cat.id
  name = var.vcd_template_os
}

locals {
  instance_count = {
    stage = 1
    prod = 2
  }

  instance_core = {
    stage = 2
    prod  = 2
  }

  instance_ram = {
    stage = 4096
    prod = 4096
  }

  instance_disk_size = {
    stage = 15360
    prod = 20480
  }

  instance_end_address = {
    stage = "192.168.1.126"
    prod = "192.168.1.254"
  }

  instance_start_address = {
    stage = "192.168.1.2"
    prod = "192.168.1.129"
  }

  instance_network_name = {
    stage = "potap_network_first_subnet"
    prod = "potap_network_second_subnet"
  }
}

resource "vcd_vm" "vm" {
  count = local.instance_count[terraform.workspace]
  name = "test-${terraform.workspace}-${count.index+1}"
  computer_name = "test-${terraform.workspace}-${count.index+1}"
  vapp_template_id = data.vcd_catalog_vapp_template.vappTmpl.id
  memory = local.instance_ram[terraform.workspace]
  cpus = var.cpu
  cpu_cores = local.instance_core[terraform.workspace]
  power_on = var.power_on

  customization {
    enabled = true
    admin_password = "password"
    allow_local_admin_password = true
    auto_generate_password = false
    initscript = <<EOF
#!/bin/bash
growpart /dev/sda 3
lvextend -l +100%FREE /dev/ubuntu-vg/ubuntu-lv
EOF
  }

  override_template_disk {
    bus_number  = 0
    bus_type    = "parallel"
    size_in_mb  = local.instance_disk_size[terraform.workspace]
    unit_number = 0
  }

  network {
    type = "org"
    name = local.instance_network_name[terraform.workspace]
    ip_allocation_mode = "POOL"
  }

  guest_properties = {
    "local-hostname"      = "test-${terraform.workspace}-${count.index+1}"
    "user-data" = base64encode(file("${path.module}/userdata.yaml"))
  }
}

resource "vcd_network_isolated" "net" {
  name = local.instance_network_name[terraform.workspace]
  org = var.vcd_org
  vdc = var.vcd_org_vdc
  dns1 = "1.1.1.1"
  gateway = "192.168.1.1"
  static_ip_pool {
    start_address = local.instance_start_address[terraform.workspace]
    end_address   = local.instance_end_address[terraform.workspace]
  }
}

