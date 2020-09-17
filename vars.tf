# This files contains the variables declaration and initialization that are required to build the infrastructure

variable "AWS_ACCESS_KEY" {
    type = string
}
variable "AWS_SECRET_KEY" {
    type = string
}
variable "AWS_REGION"{
    type = string
}

variable "AMIS"{
    type = map(string)
    default = {
        ap-southeast-1 = "ami-0ffa7deb237ae4ad2"
    }
}

variable "PATH_TO_PRIVATE_KEY" {
    default = "mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
    default = "mykey.pub"
}

variable "PATH_TO_PUBLIC_KEY1" {
    default = "mykey1.pub"
}
