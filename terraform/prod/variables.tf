variable project {
  description = "Project ID"
}

variable region {
  description = "Region"
  default     = "europe-west1"
}

variable "zone_instance" {
  default = "europe-west1-b"
}

variable "count_instance" {
  description = "count of instances"
  default     = "1"
}

variable public_key {
  description = "public key used for ssh access"
}

variable private_key {
  description = "private key used for ssh access"
}

variable disk_image {
  description = "Disk image"
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-ruby-1562141405"
}

variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-mongodb-1562174469"
}

variable "app_port" {
  default = "9292"
}

variable "access_range" {
  type        = "list"
  description = "Access range list to ssh port"
}