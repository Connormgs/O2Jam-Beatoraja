# Set the source folder where the file is located
$sourceFolder = "C:\Users\c\Downloads\beatoraja0.8.7\Skin\O2Jam-Beatoraja\customize\bomb\2"

# Set the destination folder where you want to copy the file
$destinationFolder = "C:\Users\c\Downloads\beatoraja0.8.7\Skin\O2Jam-Beatoraja\customize\bomb"

# Set the name of the file you want to copy
$fileName = "parts.lua"

# Get all the folders in the destination folder, excluding the source folder
$folders = Get-ChildItem -Path $destinationFolder -Directory | Where-Object { $_.FullName -ne $sourceFolder }

# Loop through each folder and copy the file
foreach ($folder in $folders) {
    $destinationPath = Join-Path -Path $folder.FullName -ChildPath $fileName
    Copy-Item -Path (Join-Path -Path $sourceFolder -ChildPath $fileName) -Destination $destinationPath
    Write-Host "Copied $fileName to $($folder.Name)"
}