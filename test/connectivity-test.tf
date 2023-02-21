terraform {
  required_version = ">= 0.15"
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.9"
    }
  }
}

provider "libvirt" {
  uri = "qemu+ssh://rafael.bolivar@192.168.1.30/system?keyfile=/Users/rafael.bolivar/.ssh/id_ed25519"
}

resource "libvirt_domain" "terraform_test" {
  name = "terraform_test"
}
