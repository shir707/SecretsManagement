output "secrets" {
    value = data.aws_kms_secrets.secrets
    sensitive = true
}