terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
    jwt = {
      source  = "camptocamp/jwt"
      version = "1.1.0"
    }
    htpasswd = {
      source  = "loafoe/htpasswd"
      version = "1.0.4"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.9.1"
    }
  
  }
}
