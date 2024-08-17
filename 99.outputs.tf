output "example-api-public-ip" {
  description = "Ip publica del servidor"
  value       = aws_instance.example-api.public_ip
}

output "example-api-private-ip" {
  description = "Ip privada del servidor"
  value       = aws_instance.example-api.private_ip
}

output "example-api-public-dns" {
  description = "DNS publica del servidor"
  value       = aws_instance.example-api.public_dns
}
