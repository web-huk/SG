output "security_group_arn" {
  value       = aws_security_group.wallfire.arn
}

output "security_group_id" {
  value = aws_security_group.wallfire.id
}
