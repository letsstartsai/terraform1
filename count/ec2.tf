resource "aws_instance" "db" {
    #count = 3
    count = length(var.instance_names) #length is a funtion will create instances based on the variables
    ami = "ami-090252cbe067a9e58"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = "t3.micro"

    tags = {
        Name = var.instance_names[count.index]
            
                }
}


resource "aws_security_group" "allow_ssh" {
    name = "allow-ssh"
    description = "allowing SSH access"

    ingress {
        from_port           = 22
        to_port             = 22
        protocol            = "tcp"
        cidr_blocks         = ["0.0.0.0/0"]
        ipv6_cidr_blocks    = ["::/0"]
    }
    egress {
        from_port            = 0
        to_port              = 0
        protocol             = "-1" # -1 all protocols 
        cidr_blocks          = ["0.0.0.0/0"]
        
    }
}