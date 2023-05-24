param([string]$name, [string]$rg)

Write-Output "----------------------------------"

Write-Output "Storage Account Deploy Script - JO"

Write-Output "----------------------------------"

$templatePath = "./storage-account-deploy-template.json"

Write-Output "Attempting to deploy storage account to '$rg' resource group"

New-AzResourceGroupDeployment -Name $name -ResourceGroupName $rg -TemplateFile $templatePath

if ($?) {
    Write-Host "Storage account deployment successful."
} else {
    Write-Host "Deployment failed."
}