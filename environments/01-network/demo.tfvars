enable_debug = "true"

network_address_space                  = "10.51.64.0/18"
aks_00_subnet_cidr_blocks              = "10.51.64.0/20"
aks_01_subnet_cidr_blocks              = "10.51.80.0/20"
iaas_subnet_cidr_blocks                = "10.51.96.0/25"
application_gateway_subnet_cidr_blocks = "10.51.96.128/25"
postgresql_subnet_cidr_blocks          = "10.51.104.0/25"

additional_subnets = [
  {
    name           = "vh_private_endpoints"
    address_prefix = "10.51.97.0/25"
  },
  {
    name           = "api-management"
    address_prefix = "10.51.97.128/25"
  },
  {
    name           = "redis",
    address_prefix = "10.51.98.0/25"
  },
  {
    name           = "private-endpoints"
    address_prefix = "10.51.100.0/22"
  },
]

application_gateway_routes = [
  {
    name                   = "vh-perf-test-demo"
    address_prefix         = "10.50.10.80/28"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.11.72.36"
  },
  {
    name                   = "vh-infra-core-ado"
    address_prefix         = "10.10.52.0/24"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.11.72.36"
  }
]

private_dns_subscription = "1baf5470-1c3e-40d3-a6f7-74bfbce4b348"
private_dns_zones = [
  "demo.platform.hmcts.net",
]

hub = "nonprod"
