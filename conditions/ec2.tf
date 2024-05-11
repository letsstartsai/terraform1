resource "aws_instance" "db" {

    ami = var.image_id 
    #vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = var.instance_name == "db" ? "tm.small" : "t3.micro"    

}
    