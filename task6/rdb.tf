provider "aws" {
  region = "ap-south-1"
  profile = "prakhar"
}
resource "aws_db_instance" "pmbdatabase" {
  allocated_storage    = 20
  identifier           = "dbinstance"
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7.30"
  instance_class       = "db.t2.micro"
  name                 = "pmbdb"
  username             = "Prakhar"
  password             = "redhatpmb"
  parameter_group_name = "default.mysql5.7"
  publicly_accessible = true
  skip_final_snapshot  = true
  iam_database_authentication_enabled = true
  
  tags = {
    Name = "Prakhar_SQLDB"
  }
}

output "ip" {
    value = "${aws_db_instance.pmbdatabase.address}"
}