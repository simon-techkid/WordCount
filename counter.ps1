# Get the file path from the first argument
param (
    [string]$filePath
)

# Read all lines from the file
$doc = Get-Content -Path $filePath

# Split lines into words and count them
$words = $doc -split '\s+' | Where-Object { $_ -ne '' }
Write-Output "$($words.Count) words"
