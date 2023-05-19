variable "subscription_id" {
  
}
variable "client_id" {
  
}
variable "client_secret" {
  
}
variable "tenant_id" {
  
}

variable "locations" {
  type = list(string)
  description = "list of locations"
  default = ["eastus", "westus", "centralindia", "centralus"]
}
