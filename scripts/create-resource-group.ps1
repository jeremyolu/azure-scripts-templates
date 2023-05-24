param([string]$name, [string]$location)

Write-Output "Create resource group script"

# create resource group by providing the name of resource group and location in the params when executing the script.

$existingRg = Get-AzResourceGroup -Name $name -ErrorAction SilentlyContinue

if ($existingRg)
{
    Write-Output "Resource group already exists"
} 
else 
{
    try {
        New-AzResourceGroup -Name $name -Location $location
    }
    catch {
        Write-Output "Error creating the resource group. Try again..."
    }
}