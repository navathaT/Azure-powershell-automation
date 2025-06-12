$rgName = "AutoRG"
$location = "EastUS"
$vmName = "AutoVM"

New-AzResourceGroup -Name $rgName -Location $location

$cred = Get-Credential

New-AzVm `
  -ResourceGroupName $rgName `
  -Name $vmName `
  -Location $location `
  -VirtualNetworkName "${vmName}VNET" `
  -SubnetName "default" `
  -SecurityGroupName "${vmName}NSG" `
  -PublicIpAddressName "${vmName}IP" `
  -Credential $cred
