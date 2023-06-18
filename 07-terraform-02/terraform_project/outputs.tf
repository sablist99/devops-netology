output "vms" {
  value = [for host in vcd_vm.vm: [host.computer_name, host.network.0.ip]]
}


















