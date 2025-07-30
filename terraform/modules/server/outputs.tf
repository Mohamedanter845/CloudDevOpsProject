output "jenkins_public_ip" {
  description = "Public IP of Jenkins EC2"
  value       = aws_instance.jenkins.public_ip
}
output "public_ip" {
  value = aws_instance.server.public_ip
}
