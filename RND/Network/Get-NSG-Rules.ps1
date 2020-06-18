
$rg = "RG-MO"
$nsg_name = "MO-NSG"
$rule_name = "Allow_From_OnPrem_To_P4R_TCP"

$rule = Get-AzureRmNetworkSecurityGroup -Name $nsg_name -ResourceGroupName $rg | Get-AzureRmNetworkSecurityRuleConfig -Name $rule_name

$rule.SourceAddressPrefix
$rule.DestinationAddressPrefix
$rule.DestinationPortRange