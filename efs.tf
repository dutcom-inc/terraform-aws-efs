resource "aws_efs_file_system" "default" {
  creation_token = local.name
  performance_mode = "generalPurpose"
  throughput_mode = "bursting"
  encrypted = true

  tags = merge(
    local.common_tags
  ) 
}