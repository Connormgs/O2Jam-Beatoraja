# Define the directory path
$directoryPath = "C:\Users\c\Downloads\beatoraja0.8.7\Skin\simple-play-simple\customize\bomb"

# Get all subfolders recursively
$subfolders = Get-ChildItem -Path $directoryPath -Directory -Recurse

# Loop through each subfolder
foreach ($subfolder in $subfolders) {
    # Enter the subfolder
    Set-Location -Path $subfolder.FullName
    
    # Run your command here
    # For example, you can list the files in the current subfolder
    magick.exe convert BOMB.png -draw "image over  80,60 0,0 'Frame1.png'" -draw "image over  470,60 0,0 'Frame2.png'"-draw "image over  870,60 0,0 'Frame3.png'" -draw "image over  1280,60 0,0 'Frame4.png'" -draw "image over  1680,60 0,0 'Frame5.png'" -draw "image over  2080,60 0,0 'Frame6.png'" -draw "image over  2480,60 0,0 'Frame7.png'" -draw "image over  2880,60 0,0 'Frame8.png'" -draw "image over  3280,60 0,0 'Frame9.png'" -draw "image over  3680,60 0,0 'Frame10.png'" -draw "image over  4080,60 0,0 'Frame11.png'" -draw "image over  4480,60 0,0 'Frame12.png'" BOMB.png
    
    # Return to the parent directory after running the command (optional)
    Set-Location -Path $directoryPath
}