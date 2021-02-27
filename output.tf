output "account_id" {
  value = data.aws_caller_identity.HelloWorld.account_id
}

output "caller_user" {
  value = data.aws_caller_identity.HelloWorld.user_id
}

output "aws_region" {
  value = data.aws_region.HelloWorld
}

output "aws_instance_private_ip" {
  value = data.aws_instance.HelloWorld.private_ip
}

output "aws_instance_public_ip" {
  value = data.aws_instance.HelloWorld.public_ip
}

output "aws_instance_network_interface_id" {
  value = data.aws_instance.HelloWorld.network_interface_id           
}
