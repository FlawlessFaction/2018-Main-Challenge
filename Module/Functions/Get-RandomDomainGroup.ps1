function Get-RandomDomainGroup {
	[cmdletbinding()]
	param(
		[parameter(Mandatory)]
		[string]$Domain
	)
	$DomainGroups = @($Domain + "group1", $Domain + "group2", $Domain + "group3", $Domain + "group4")
	$index = Get-Random -Minimum 0 -Maximum 4
	$DomainGroups[$index]
}