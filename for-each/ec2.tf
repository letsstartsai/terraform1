#resource <resource-type> <resource-name>
resource "aws_instance" "expense" {
    for_each = var.instance_names  
    ami = data.aws_ami.ami_info.id
    vpc_security_group_ids = ["sg-02bce74bfbab75b07"]
    instance_type = each.value

    tags = merge(
        var.common_tags,
        {
            Name   = each.key
            Module = each.key   
        }
    )
        
    }