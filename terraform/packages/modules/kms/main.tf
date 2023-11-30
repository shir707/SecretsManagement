 module "kms_key" {
      source = "cloudposse/kms-key/aws"
      # Cloud Posse recommends pinning every module to a specific version
      version = "0.12.1"
      name                    = var.kms_name
      description             = "KMS key for chamber"
      deletion_window_in_days = var.deletion_window_in_days
      enable_key_rotation     = var.enable_key_rotation
      alias                   = var.alias
    }

