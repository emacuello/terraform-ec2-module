resource "aws_key_pair" "example-api-ssh" {
  key_name   = "${var.sv_name}-ssh"
  public_key = file("${var.sv_name}.key.pub")

  tags = {
    Name        = "${var.sv_name}-ssh"
    Environment = var.env
    Owner       = "https://emacuello.link"
    Team        = var.team_name
    Project     = var.project_name
  }
}
