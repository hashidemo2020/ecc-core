output "vpc_id" {
  value = aws_vpc.mainvpc.id
}

output "vpc_arn" {
  value = aws_vpc.mainvpc.arn
}

output "vpc_cidr" {
  value = aws_vpc.mainvpc.cidr_block
}