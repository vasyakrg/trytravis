variable app_disk_image_family {
  description = "Disk image for reddit app"
  default     = "reddit-base-app"
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

variable "install_app" {
  default = "true"
}

variable "db_internal_ip" {
  default = "127.0.0.1"
}
