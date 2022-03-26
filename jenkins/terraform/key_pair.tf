variable "key_name" {}

resource "tls_private_key" "jenkins_private_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "jenkins_management_key" {
  key_name   = "jenkins-management-key-pair"
  public_key = "${tls_private_key.jenkins_private_key.public_key_openssh}"
}
