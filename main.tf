provider "aws" {
 region = "ap-northeast-3"
}
resource "aws_instance" "master" {
 ami           = "ami-08d2c65201c92d6dc"
 instance_type = "t3.micro"
 tags = {
   Name = "ansible-master"
 }
}
resource "aws_instance" "slave" {
 ami           = "ami-08d2c65201c92d6dc"
 instance_type = "t3.micro"
 tags = {
   Name = "ansible-slave"
 }
}
