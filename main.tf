resource "aws_lightsail_instance" "custom" {
  name              = "dev-server"
  availability_zone = "us-east-1a"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "medium_1_0"
  user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via Terraform by Ivan</h1>' | sudo tee /var/www/html/index.html"
                   
}