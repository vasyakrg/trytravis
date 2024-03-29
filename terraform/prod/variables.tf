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
  default     = ""
}

variable private_key {
  description = "private key used for ssh access"
  default     = ""
}

variable disk_image {
  description = "Disk image"
}

variable app_disk_image_family {
  description = "Disk image for reddit app"
  default     = "reddit-base-app"
}

variable db_disk_image_family {
  description = "Disk image for reddit db"
  default     = "reddit-base-db"
}

variable "app_port" {
  default = "9292"
}

variable "access_range" {
  type        = "list"
  description = "Access range list to ssh port"
}
