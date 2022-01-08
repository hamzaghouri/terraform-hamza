variable "ami_id" {
    type = string
    default = "ami-0ed9277fb7eb570c9"
}

variable "sg_id" {
    type = list(string)
    default = ["sg-0d044b8c96981e725"]
  
}

variable "pub_sub_id" {
    type = string
    default = "subnet-0b1a144feb4858f3d"
}