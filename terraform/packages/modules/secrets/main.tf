data "aws_kms_secrets" "secrets" {
  for_each = var.secrets
  secret {
    # ... potentially other configuration ...
    name    = each.key
    payload = each.value
    # ... Use same algorithm used to Encrypt the payload ...
    key_id               = var.kms_key_id
  }
}

resource "aws_secretsmanager_secret" "secret_manager_name" {
  for_each = data.aws_kms_secrets.secrets 
  name = each.key
}

resource "aws_secretsmanager_secret_version" "secret_value" {
  for_each = data.aws_kms_secrets.secrets  
  secret_id     = aws_secretsmanager_secret.secret_manager_name[each.key].id
  secret_string = data.aws_kms_secrets.secrets[each.key].plaintext[each.key]
}
