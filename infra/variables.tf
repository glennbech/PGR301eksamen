variable "instance_name" {
  type = string
}

variable "image_identifier"{
  type = string
}

variable "iam_role"{
 type = string
}

variable "iam_policy"{
 type = string
}

variable "student_name" {
  type = string
  default = "linrob16"
}