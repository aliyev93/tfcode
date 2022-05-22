variable "db_storage" {
  description = "DB Storage"
  default     = "10"
  type        = string
}

variable "db_engine" {
  description = "DB Engine"
  type        = string
  default     = "mysql"
}

variable "db_version" {
  description = "db engine version"
  type        = string
  default     = "5.7"
}

variable "db_class" {
  desctipdescription = "DB instance class"
  type = string
  defdefault = "db.t3.micro"  
}