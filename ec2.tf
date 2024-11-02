resource "aws_instance" "terraform" {
    count = length(var.instance_name)
    ami = var.ami_id
    vpc_security_group_ids = var.security_group
      instance_type = local.typo[count.index]  

    tags = merge ( var.common_tag,
    {
        Name = var.instance_name[count.index]
    }
    ) 
}
