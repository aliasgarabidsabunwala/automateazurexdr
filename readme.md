# Automating Azure integeration into XDR tools

This project is submitted for Future Talent Ready Internship!

# Project Synopsis

## Industry Type
Education-Technology (Ed-Tech)

## Project Title
Automating Azure integration into XDR tools like SentinelOne, Sophos and Splunk.

## Problem Statement/ Opportunity
Creating an Executable script for integrating Threat Intelligence and Analysis, XDR platforms like SentinelOne, and Splunk, into Azure using Azure Blob Storage having endpoint set at GitHub to execute it as and when required by selecting options like - 

            - 1. for SentinelOne, 
            - 2. For Sophos, and, 
            - 3. For Splunk.

## Project Description
### The core idea of your project: solving a problem statement / working on an opportunity area?
Creating an Executable script for integrating Threat Intelligence and Analysis, XDR platforms like SentinelOne, and Splunk, into Azure using Azure Blob Storage having endpoint set at GitHub to execute it as and when required by selecting options like -

            - 1. for SentinelOne, 
            - 2. For Sophos, and, 
            - 3. For Splunk.

### The problem you are trying to solve and how are you solving it?
This project is useful for people who don't have time to follow official steps for connecting SentinelOne and Splunk into Azure. So, to solve it we created this script to solve the problem around this using Azure Blob Storage functionality along with using GitHub as endpoint for it.

### Mention how your project addresses a clear need, problem, or opportunity and is the solution clearly explained?
This project is useful for people who don't have time to follow official steps for connecting SentinelOne and Splunk into Azure. So, to solve it we created this script to solve the problem around this using Azure Blob Storage functionality along with using GitHub as endpoint for it.

### Is the project’s purpose and basic functionality mapped to the problem statement/opportunity area?
Yes, the project’s purpose and basic functionality is PERFECTLY mapped to the problem statement/opportunity area.

## Primary Azure Technology
      1. Azure App Function
      2. Azure Blob Storage
      3. Azure Pipelines
      4. Microsoft Sentinel

# To create scripts in Azure using GitHub integration to integrate XDR (Extended Detection and Response) tools like SentinelOne, Sophos, and Splunk, we follow these steps:

1. Set up an Azure environment:
   - Create an Azure subscription if you don't have one already.
   - Set up an Azure resource group to organize your resources.
     ![image](https://github.com/aliasgarabidsabunwala/automateazurexdr/assets/67218125/54e3454c-9f4a-4bd2-9a7e-fde7ae48efbf)
   - Provision the necessary Azure services like Azure Functions for executing our scripts.
     ![image](https://github.com/aliasgarabidsabunwala/automateazurexdr/assets/67218125/0e330f30-9d5f-461b-97d4-d602d9e172af)

     Figure - App Function Relationship Diagram


2. Set up a GitHub repository:
   - Create a GitHub repository to host your scripts.
   - Initialize the repository with a README file and any other necessary files.

3. Create your integration scripts:
   - Determine the specific actions you want to perform with each XDR tool (SentinelOne, Sophos, Splunk) and the corresponding APIs or SDKs provided by each tool.
   - Choose a scripting language like PowerShell Core to write our scripts.
   - Use the relevant APIs or SDKs to interact with the XDR tools and perform the desired actions.

### To integrate SentinelOne into Azure using PowerShell Core
   -  Make sure to replace the placeholder values with your actual subscription ID, resource group name, Sentinel instance name, and desired location.

- This script installs the Azure Sentinel PowerShell module, connects to your Azure account, creates a new Sentinel instance in the specified resource group and location, and then configures the SentinelOne data connector for that instance.

- You can customize the script further to meet your specific requirements, such as configuring additional data connectors or performing other tasks within Azure Sentinel. Additionally, make sure you have the necessary permissions and prerequisites in your Azure environment to create and configure resources.

### To integrate Sophos into Azure using PowerShell Core
            - This part in the script assumes that you have already authenticated to Azure using `Connect-AzAccount` and provided the necessary authentication for your Sophos API token (`$apiToken`) and subscription ID (`$subscriptionId`).
            
            - Here's a breakdown of the script:
            
            1. Authenticate to Azure using `Connect-AzAccount`.
            2. Define the Azure resource group name (`$resourceGroupName`) and location (`$location`) where the resources will be deployed.
            3. Create a new resource group using `New-AzResourceGroup`.
            4. Create a new Azure storage account using `New-AzStorageAccount`.
            5. Get the connection string of the storage account using `Get-AzStorageAccountKey`.
            6. Create a new Azure Function App using `New-AzFunctionApp`.
            7. Deploy the Sophos integration code to the Function App using `Publish-AzWebapp`. Make sure to specify the correct path to your Sophos Function App code (`$functionAppFolder`).
            8. Get the Function App URL using `Get-AzWebApp`.
            9. Configure Sophos to send events to the Function App URL by creating a webhook. This is done by making a POST request to the Soph

### To integrate Splunkk into Azure using PowerShell Core
   -  This part in the script assumes that you have already authenticated to Azure using Connect-AzAccount and provided the necessary authentication for your Splunk HEC token ($splunkHecToken).

Here's a breakdown of the script:

- Authenticate to Azure using Connect-AzAccount.
- Define the Azure resource group name (`$resourceGroupName

4. Store your scripts in the GitHub repository:
   - Commit and push your scripts to the GitHub repository.
   - Ensure your scripts are well-documented, including any dependencies and required configurations.

5. Set up Azure Automation:
   - In the Azure portal, navigate to Azure Automation.
   - Create an Azure Automation account if you haven't done so already.
   - Inside the Automation account, create an Azure Automation Runbook.
   - Link the Runbook to your GitHub repository using the GitHub integration in Azure Automation. This integration allows you to automatically pull script changes from the repository.

6. Configure triggers and schedules:
   - Determine the triggers or schedules for executing your scripts. For example, you might want to trigger a script when a new event occurs in one of the XDR tools or run it periodically.
   - Set up the appropriate triggers or schedules in Azure Automation based on your requirements.

7. Test and monitor:
   - Test your scripts by executing them manually or by triggering the associated events.
   - Monitor the execution logs and any outputs or errors generated by the scripts.
   - Iterate and refine your scripts as needed based on the results and feedback.

By following these steps, you can create and manage scripts in Azure using GitHub integration to integrate XDR tools like SentinelOne, Sophos, and Splunk. Remember to consult the documentation and APIs provided by each XDR tool to understand the specific integration capabilities and features available.
