variable "ami_id" {
    type = string
    # ami is supposed to passed by user.
}

variable "security_group" {
    type = list(string)
    default = ["sg-077917637fc069d1f"]
}

variable "instance_type" {
    type = string
    # default = "t3.micro"
    # instance type is expected by user

}

# create a module where user creates a single ec2_instance .

variable "instance_name" {
    type = list(string)
    # default = "mysql"
    # expecting input from user.

} 

variable "common_tag"{
    type = map
    default = {
        Project = "expense"
        terraform = true
        # environment = "Prod"
    }  
}