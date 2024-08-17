resource "aws_instance" "example-api" {
  ami                    = var.aws-ami
  instance_type          = var.aws-instance-type
  user_data              = <<-EOF
    #!/bin/bash
    sudo apt update -y
    sudo apt upgrade -y
    sudo apt install nginx -y
    sudo systemctl enable nginx
    sudo systemctl start nginx  
    EOF
  key_name               = aws_key_pair.example-api-ssh.key_name
  vpc_security_group_ids = [aws_security_group.example-api-sg.id]

  tags = {
    Name        = var.sv_name
    Environment = var.env
    Owner       = "https://emacuello.link"
    Team        = var.team_name
    Project     = var.project_name
  }
}
