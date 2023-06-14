output "public_cidr_blocks" {
  value = [aws_subnet.terraform-sub1-pub, aws_subnet.terraform-sub2-pub]
}

output "vpc_id" {
  value = aws_vpc.aws-vpc.id
}

output "private_cidr_blocks" {
  value = [aws_subnet.terraform-sub3-private, aws_subnet.terraform-sub3-private]
}

output "vpc_cidr_block" {
  value = aws_vpc.aws-vpc.cidr_block
}