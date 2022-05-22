resource "aws_db_instance" "default" {
  allocated_storage    = "${var.db_storage}"
  engine               = "${ var.db_engine}"
  engine_version       = "${ var.db_version}"
  instance_class       = "${var.db_class}"
  name                 = "mydb"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}