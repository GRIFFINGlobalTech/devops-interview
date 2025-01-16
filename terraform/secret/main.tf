#todo create a secret manager secret


output "secret_arn" {
  value = aws_secretsmanager_secret.secret.arn
}