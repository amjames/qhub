variable "name" {
  description = "Prefix name to assign to ingress kubernetes resources"
  type        = string
}

variable "environment" {
  description = "Kubernetes namespace to deploy ingress resources"
  type        = string
}

variable "node_groups" {
  description = "Node group selectors for kubernetes resources"
  type        = map(object({
    key = string
    value = string
  }))
}

variable "enable-certificates" {
  description = "Enable certificates"
  default     = false
}

variable "acme-email" {
  description = "ACME server email"
  default     = "qhub@example.com"
}

variable "acme-server" {
  description = "ACME server"
  # for testing use the letencrypt staging server
  #  - staging:    https://acme-staging-v02.api.letsencrypt.org/directory
  #  - production: https://acme-v02.api.letsencrypt.org/directory
  default = "https://acme-staging-v02.api.letsencrypt.org/directory"
}

variable "certificate-secret-name" {
  description = "Kubernetes secret used for certificate"
  default     = ""
}

variable "internal-load_balancer-enabled" {
  description = "Enables internal load balancing"
  type = bool
  default = false
}

variable "internal-load_balancer-ip_adress" {
  description = "Set the IP addresses to associate with an internal load balancer"
  type = string
  default = null
}

variable "internal-load_balancer-annotations" {
  description = "Load Balancer service annotations"
  type = map(any)
  default = {}
}