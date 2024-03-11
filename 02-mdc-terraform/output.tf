output "control_instance_public_ip" {
  value = aws_instance.control_instance.public_ip
}

output "worker_instance_public_ip" {
  value = aws_instance.worker_instance.public_ip
}