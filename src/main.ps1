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
            Write-Host "SentinelOne integration completed!"
            break
        }
        2 {
            # Integration with Sophos
            Write-Host "`nIntegrating Sophos into Azure..."
            # Add your Sophos integration code here
            Write-Host "Sophos integration completed!"
            break
        }
        3 {
            # Integration with Splunk
            Write-Host "`nIntegrating Splunk into Azure..."
            # Add your Splunk integration code here
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
