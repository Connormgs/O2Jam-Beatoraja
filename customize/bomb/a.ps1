# Specify the source file path and the destination directory
$sourceFilePath = "C:\Users\c\Downloads\beatoraja0.8.7\Skin\O2Jam-Beatoraja\customize\bomb\parts.lua"
$destinationDirectory = "C:\Users\c\Downloads\beatoraja0.8.7\Skin\O2Jam-Beatoraja\customize\bomb"

# Get all subfolders recursively
$subfolders = Get-ChildItem -Path $destinationDirectory -Recurse -Directory

# Move the file into each subfolder
foreach ($subfolder in $subfolders) {
    $destinationPath = Join-Path -Path $subfolder.FullName -ChildPath (Get-Item $sourceFilePath).Name
    Move-Item -Path $sourceFilePath -Destination $destinationPath -Force
}

Write-Host "File moved into all subfolders successfully!"

