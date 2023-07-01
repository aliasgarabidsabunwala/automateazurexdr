# Automating Azure integeration into XDR tools

This project is submitted for Future Talent Ready Internship!

# Project Synopsis

## Industry Type
Education-Technology (Ed-Tech)

## Project Title
Automating Azure integration into XDR tools like SentinelOne, Sophos and Splunk.

## Problem Statement/ Opportunity
Creating an Executable script for integrating Threat Intelligence and Analysis, XDR platforms like SentinelOne, and Splunk, into Azure using Azure Blob Storage having endpoint set at GitHub to execute it as and when required by selecting options like 1. for SentinelOne, 2. For Sophos and, 3. For Splunk.

## Project Description
### The core idea of your project: solving a problem statement / working on an opportunity area?
Creating an Executable script for integrating Threat Intelligence and Analysis, XDR platforms like SentinelOne, and Splunk, into Azure using Azure Blob Storage having endpoint set at GitHub to execute it as and when required by selecting options like 1. for SentinelOne, 2. For Sophos and, 3. For Splunk.

### The problem you are trying to solve and how are you solving it?
This project is useful for people who don't have time to follow official steps for connecting SentinelOne and Splunk into Azure. So, to solve it we created this script to solve the problem around this using Azure Blob Storage functionality along with using GitHub as endpoint for it.

### Mention how your project addresses a clear need, problem, or opportunity and is the solution clearly explained?
This project is useful for people who don't have time to follow official steps for connecting SentinelOne and Splunk into Azure. So, to solve it we created this script to solve the problem around this using Azure Blob Storage functionality along with using GitHub as endpoint for it.

### Is the project’s purpose and basic functionality mapped to the problem statement/opportunity area?
Yes, the project’s purpose and basic functionality is PERFECTLY mapped to the problem statement/opportunity area.

## Primary Azure Technology
      1. Azure Blob Storage
      2. Azure Pipelines
      3. Microsoft Sentinel

# To create scripts in Azure using GitHub integration, you can follow these steps:

1. Set up a GitHub repository:
   - Go to GitHub (https://github.com/) and sign in or create a new account if needed.
   - Create a new repository or select an existing repository where you want to store your scripts.
   - Clone the repository to your local development environment using Git.

2. Set up Azure DevOps:
   - Go to the Azure DevOps portal (https://dev.azure.com/) and sign in or create a new account if needed.
   - Create a new project or select an existing project where you want to manage your scripts.
   - In the Azure DevOps project, go to the "Pipelines" section.

3. Create a pipeline:
   - Click on "New Pipeline" to create a new pipeline.
   - Select the appropriate repository where you cloned your scripts from GitHub.
   - Choose the repository and branch you want to use for the pipeline.

4. Configure the pipeline:
   - Choose the pipeline configuration option that suits your needs. This can include templates, classic editor, or YAML-based configuration.
   - Specify the build steps and tasks required for your script execution. This can include tasks like setting up the environment, installing dependencies, and executing the scripts.

5. Integrate with Azure resources:
   - Within the pipeline tasks, you can use Azure-specific tasks to interact with Azure resources.
   - For example, you can use the Azure CLI task to run Azure CLI commands, the Azure PowerShell task to run PowerShell scripts against Azure, or the Azure Resource Group Deployment task to deploy Azure resources using ARM templates.

6. Define triggers and schedules:
   - Configure triggers and schedules to control when the pipeline should run.
   - Triggers can be set up to execute the pipeline on every commit, on a specific branch, or based on other events.
   - Schedules allow you to specify a recurring time or interval for running the pipeline.

7. Save and run the pipeline:
   - Save the pipeline configuration and trigger a manual run to test the pipeline.
   - The pipeline will fetch the scripts from the GitHub repository, execute the defined tasks, and interact with Azure resources as per the configuration.

By following these steps, you can create scripts in Azure using GitHub integration and automate their execution using Azure DevOps pipelines. The integration allows you to version control your scripts, collaborate with others, and automate the deployment and execution of your Azure-related tasks.
