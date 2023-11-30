module kms {
    source = "../../../../terraform/packages/modules/kms"
    kms_name = var.kms_name
    deletion_window_in_days = var.deletion_window_in_days
    enable_key_rotation = var.enable_key_rotation
    alias = var.alias
}