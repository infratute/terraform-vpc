resource "aws_instance" "web1" {
    ami = "ami-00ee4df451840fa9d"
    instance_type = "t2.micro"
    # VPC
    subnet_id = "${aws_subnet.prod-subnet-public-1.id}"
    # Security Group
    vpc_security_group_ids = ["${aws_security_group.ssh-allowed.id}"]
    # the Public SSH key
    key_name = "${aws_key_pair.oregon-key-pair.id}"
    # nginx installation
    tags = {
        Name = "TF_Instance"
    }
    provisioner "file" {
        source = "httpd.sh"
        destination = "/tmp/httpd.sh"
    }
    provisioner "remote-exec" {
        inline = [
             "chmod +x /tmp/httpd.sh",
             "sudo /tmp/httpd.sh"
        ]
    }
    connection {
        host = self.public_ip
        user = "${var.EC2_USER}"
        private_key = "${file("${var.PRIVATE_KEY_PATH}")}"
    }
}
// Sends your public key to the instance
resource "aws_key_pair" "oregon-key-pair" {
    key_name = "oregon-key-pair"
    public_key = "${file(var.PUBLIC_KEY_PATH)}"
}
