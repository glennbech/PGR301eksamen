variable "instance_name" {
  type = string
  default = "linrob16"
}

variable "image_identifier"{
  type = string
  default = "244530008913.dkr.ecr.eu-west-1.amazonaws.com/2027-ecr:latest"
}

variable "iam_role"{
 type = string
 default = "candidate-2027-role"
}

variable "iam_policy"{
 type = string
 default = "candidate-2027-policy"
}

variable "dashboard_name" {
  type = string
  default = "linrob16"
}

variable "alarm_prefix"{
    type = string
    default = "linrob16s"
}

variable "alarm_email"{
    type = string
    default = "robin_flaks@hotmail.com"
}