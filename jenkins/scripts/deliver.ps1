# deliver.ps1

# Run the build step
npm run build

# Start the application in the background
Start-Process -FilePath "npm" -ArgumentList "start" -NoNewWindow -PassThru | Out-File -FilePath ".pidfile"

# Wait for 1 second to ensure the application starts
Start-Sleep -Seconds 1

# Display the URL to visit
Write-Output "Now..."
Write-Output "Visit http://localhost:3000 to see your Node.js/React application in action."
