variable "subnet_type" {
  default = {
    public  = "public"
    private = "private"
  }
}

variable "cidr_ranges" {
  type = map(string)
}

variable "instance_data" {
  default = {
    name-prefix   = "DevOps"
    image-id      = "ami-0649a986224ded9da"
    instance_type = "t2.micro"
  }
}

variable "vpc_cidr_block" {
  type = string
}

variable "availability_zone" {
  default = {
    availability_1a = "eu-west-1a"
    availability_1b = "eu-west-1b"
  }
}

variable "auto-scaling-group-name" {
  default = "aws-autoscaling-group"
}
