variable "instance_names" {
    type = map
    default = {

        db       = "t3.small"
        backend  = "t3.micro"
        frontend = "t3.micro"
    }

  
}

variable "common_tags" {
    type = map
    default = {
        Project =  "Expence"
        Terraform = "true"
    }
    
}

variable "domain_name" {
    default = "dryfruitsspices.online"
  
}

variable "zone_id" {
    default = "Z06637132BUJZNBW1LFI6"
  
}