resource "local_file" "ansible_inventory" {
  filename = "hosts.ini"
  content = <<-EOF
[webserver]
${esxi_guest.dbserver[0].guest_name} ansible_host=${esxi_guest.dbserver[0].ip_address}

[database]
${esxi_guest.dbserver[1].guest_name} ansible_host=${esxi_guest.dbserver[1].ip_address}

[all:vars]
ansible_ssh_common_args="-o StrictHostKeyChecking=no"
ansible_ssh_private_key_file="~/.ssh/id_ed25519"
ansible_user="ansible"
EOF
}