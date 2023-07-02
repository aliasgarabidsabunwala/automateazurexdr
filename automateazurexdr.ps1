# Welcome screen
Clear-Host

$title = "Automating XDR tools into Azure by Aliasgar Abid Sabunwala"
Write-Host "`n$title" -ForegroundColor Cyan

$menu = @"
Please select an option:
1. SentinelOne
2. Sophos
3. Splunk
0. Exit
"@

$option = $null

# Display menu and get user input
while ($option -ne 0) {
    Write-Host "`n$menu"
    $option = Read-Host "Enter your choice (0-3)"

    switch ($option) {
        1 {
            # Integration with SentinelOne
            Write-Host "`nIntegrating SentinelOne into Azure..."
            
            # Add your SentinelOne integration code here
            
                # Install Azure Sentinel module
                Install-Module -Name Az.SecurityInsights -Force
                
                # Connect to Azure
                Connect-AzAccount
                
                # Set your Azure subscription
                $subscriptionId = "YOUR_SUBSCRIPTION_ID"
                Set-AzContext -SubscriptionId $subscriptionId
                
                # Create a new Sentinel instance
                $resourceGroupName = "YOUR_RESOURCE_GROUP_NAME"
                $sentinelName = "YOUR_SENTINEL_NAME"
                $location = "YOUR_LOCATION"
                
                $sentinelParams = @{
                    ResourceGroupName = $resourceGroupName
                    WorkspaceName = $sentinelName
                    Location = $location
                }
                New-AzSecurityInsightsWorkspace @sentinelParams
                
                # Configure the SentinelOne data connector
                $workspace = Get-AzSecurityInsightsWorkspace -ResourceGroupName $resourceGroupName -WorkspaceName $sentinelName
                
                $sentinelOneParams = @{
                    ConnectorName = "SentinelOne"
                    Workspace = $workspace
                }
                Set-AzSecurityInsightsDataConnector -SentinelOne @sentinelOneParams

            Write-Host "SentinelOne integration completed!"
            break
        }
        2 {
            # Integration with Sophos
            Write-Host "`nIntegrating Sophos into Azure..."
            
            # Add your Sophos integration code here
                # Authenticate to Azure
                Connect-AzAccount
                
                # Define Azure resource group and location
                $resourceGroupName = "YourResourceGroupName"
                $location = "YourAzureRegion"
                
                # Create a new resource group
                New-AzResourceGroup -Name $resourceGroupName -Location $location
                
                # Create a new Azure storage account
                $storageAccountName = "YourStorageAccountName"
                $storageAccountSku = "Standard_LRS"
                $storageAccountKind = "StorageV2"
                $storageAccount = New-AzStorageAccount -ResourceGroupName $resourceGroupName -Name $storageAccountName -SkuName $storageAccountSku -Kind $storageAccountKind
                
                # Get the storage account connection string
                $storageAccountConnectionString = (Get-AzStorageAccountKey -ResourceGroupName $resourceGroupName -Name $storageAccountName).ConnectionString
                
                # Create a new Azure Function App
                $functionAppName = "YourFunctionAppName"
                $functionApp = New-AzFunctionApp -ResourceGroupName $resourceGroupName -Name $functionAppName -StorageAccount $storageAccount.Name -AppServicePlan $appServicePlan -Runtime "dotnet"
                
                # Deploy the Sophos integration code to the Function App
                $functionAppFolder = "C:\Path\To\SophosFunctionApp"
                Publish-AzWebapp -ResourceGroupName $resourceGroupName -Name $functionAppName -ArchivePath $functionAppFolder
                
                # Get the Function App URL
                $functionAppUrl = (Get-AzWebApp -ResourceGroupName $resourceGroupName -Name $functionAppName).DefaultHostName
                
                # Configure Sophos to send events to the Function App URL
                $apiToken = "YourSophosAPIToken"
                $subscriptionId = "YourSophosSubscriptionId"
                $apiUrl = "https://api.central.sophos.com"
                
                # Create the webhook in Sophos
                $webhookUrl = "https://$functionAppUrl/api/SophosWebhook"
                $webhookPayload = @{
                    url = $webhookUrl
                    name = "SophosWebhook"
                    eventTypeFilters = @("alert")
                    enableFilters = $true
                    status = "enabled"
                } | ConvertTo-Json
                
                $headers = @{
                    Authorization = "Bearer $apiToken"
                }
                
                $webhookEndpoint = "$apiUrl/v1/subscriptions/$subscriptionId/webhook-endpoints"
                Invoke-RestMethod -Uri $webhookEndpoint -Method POST -Headers $headers -Body $webhookPayload
             
            Write-Host "Sophos integration completed!"
            break
        }
        3 {
            # Integration with Splunk
            Write-Host "`nIntegrating Splunk into Azure..."
            
            # Add your Splunk integration code here
            # Authenticate to Azure
            Connect-AzAccount
            
            # Define Azure resource group and location
            $resourceGroupName = "YourResourceGroupName"
            $location = "YourAzureRegion"
            
            # Create a new resource group
            New-AzResourceGroup -Name $resourceGroupName -Location $location
            
            # Create a new Azure storage account
            $storageAccountName = "YourStorageAccountName"
            $storageAccountSku = "Standard_LRS"
            $storageAccountKind = "StorageV2"
            $storageAccount = New-AzStorageAccount -ResourceGroupName $resourceGroupName -Name $storageAccountName -SkuName $storageAccountSku -Kind $storageAccountKind
            
            # Get the storage account connection string
            $storageAccountConnectionString = (Get-AzStorageAccountKey -ResourceGroupName $resourceGroupName -Name $storageAccountName).ConnectionString
            
            # Create an Azure Event Hub
            $eventHubNamespaceName = "YourEventHubNamespace"
            $eventHubNamespaceSku = "Standard"
            $eventHubNamespace = New-AzEventHubNamespace -ResourceGroupName $resourceGroupName -Name $eventHubNamespaceName -Sku $eventHubNamespaceSku
            
            # Create an Azure Event Hub
            $eventHubName = "YourEventHubName"
            $eventHubPartitionCount = 2
            $eventHubMessageRetention = 1
            $eventHub = New-AzEventHub -ResourceGroupName $resourceGroupName -NamespaceName $eventHubNamespace.Name -Name $eventHubName -PartitionCount $eventHubPartitionCount -MessageRetentionInDays $eventHubMessageRetention
            
            # Get the Event Hub connection string
            $eventHubConnectionString = (Get-AzEventHub -ResourceGroupName $resourceGroupName -NamespaceName $eventHubNamespace.Name -Name $eventHubName).ConnectionStringPrimary
            
            # Create an Azure Function App
            $functionAppName = "YourFunctionAppName"
            $functionApp = New-AzFunctionApp -ResourceGroupName $resourceGroupName -Name $functionAppName -StorageAccount $storageAccount.Name -AppServicePlan $appServicePlan -Runtime "dotnet"
            
            # Deploy the Splunk integration code to the Function App
            $functionAppFolder = "C:\Path\To\SplunkFunctionApp"
            Publish-AzWebapp -ResourceGroupName $resourceGroupName -Name $functionAppName -ArchivePath $functionAppFolder
            
            # Get the Function App URL
            $functionAppUrl = (Get-AzWebApp -ResourceGroupName $resourceGroupName -Name $functionAppName).DefaultHostName
            
            # Configure Splunk to send events to the Event Hub
            $splunkApiUrl = "https://api.splunk.com"
            $splunkHecToken = "YourSplunkHECToken"
            
            # Create the HEC endpoint in Splunk
            $splunkEndpointUrl = "$splunkApiUrl/services/collector"
            $splunkEndpointPayload = @{
                token = $splunkHecToken
                name = "AzureEventHub"
                sourcetype = "azureeventhub"
                index = "main"
                endpoint = $eventHubConnectionString
            } | ConvertTo-Json
            
            $headers = @{
                Authorization = "Bearer $splunkApiToken"
            }
            
            Invoke-RestMethod -Uri $splunkEndpointUrl -Method POST -Headers $headers -Body $splunkEndpointPayload
          
            Write-Host "Splunk integration completed!"
            break
        }
        0 {
            # Exit the script
            Write-Host "`nExiting..."
            break
        }
        default {
            Write-Host "`nInvalid choice! Please enter a valid option."
        }
    }
}
