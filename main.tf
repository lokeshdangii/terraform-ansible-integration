# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-04a81a99f5ec58529"
  instance_type = "t2.micro"
  key_name      = "key_virginia"
  security_groups = ["default"]

  tags = {
    Name = "My_Instance"
  }

  provisioner "local-exec" {
    command = <<EOT
      sleep 180
      echo "[web]" > inventory
      echo "${aws_instance.web.public_ip}" >> inventory
      ansible-playbook -i inventory --private-key /home/lokesh/deployment/key_virginia.pem ./cms_nginx.yml
    EOT
  }
}

output "instance_ip" {
  value = aws_instance.web.public_ip
}