provider "oneview" {
  ov_username = "<ov_username>"
  ov_password = "<ov_password"
  ov_endpoint = "<ov_endpoint>"
  ov_sslverify = false
  ov_apiversion = <ov_apiversion>
  ov_ifmatch = "*"
}
resource "oneview_fcoe_network" "FCoENetwork" {
	name = "TestFCoENetwork_Terraform"
	type = "fcoe-networkV300"
  vlanId = 202
}

/*resource "oneview_fcoe_network" "FCoENetwork" {
	name = "TestFCoENetwork_Terraform_Renamed"
	type = "fcoe-networkV4"
  vlanId = 202
}
*/
/* Testing data source
data "oneview_fcoe_network" "fcoe_network_obj" {
        name = "TestFCoENetwork_Terraform_Renamed"
}

output "oneview_fcoe_network" {
        value = "${data.oneview_fcoe_network.fcoe_network_obj.vlan_id}"
}
*/
