locals {
    typo = [ 
    for i in var.instance_name :
        i == "mysql" ? "t2.medium" : "${var.instance_type}"
    ]
}

#as the instance names is list (string) it has to take one by one,so taking loops .
# AS This considers every value and arrange in list.
#so need to mention count.index while refering this local.