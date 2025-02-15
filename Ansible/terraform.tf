resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"  # Ubuntu 20.04 LTS
  instance_type = "t2.micro"
  key_name      = "your-ssh-key"

  tags = {
    Name = "WebInstance"
  }

  provisioner "local-exec" {
    command = "ansible-playbook -i ${self.public_ip}, setup_nginx.yml"
  }
}
