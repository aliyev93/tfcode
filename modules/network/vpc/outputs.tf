output "vpc_id" {
  value = ["${aws_vpc.assign_vpc.*.id}"]
}