# Create a Launch Configuration -----------------------------------------------
resource "aws_launch_template" "aws-launch-template" {
  name_prefix            = var.instance_data.name-prefix
  image_id               = var.instance_data.image-id
  instance_type          = var.instance_data.instance_type
  update_default_version = true
  iam_instance_profile {
    name = aws_iam_instance_profile.iam-instance-profile.name
  }
  tags = {
    key                 = "Name"
    value               = "DevOps"
    propagate_at_launch = true
  }

  vpc_security_group_ids = [aws_security_group.allow-sec1.id]

  user_data = filebase64("user_data.sh")
}