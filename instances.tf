resource "aws_instance" "ig-244614-ac1-ec2" {
    ami                 = "ami-0742b4e673072066f"
    instance_type       = "t2.micro"
    key_name            = "terraform-ssh-creo"
    subnet_id = aws_subnet.ig-244614-ac1-subnet.id
    tags = {
        Name        = "ig-244614-ac1-ec2"
        terraform   = "True"
    }
}