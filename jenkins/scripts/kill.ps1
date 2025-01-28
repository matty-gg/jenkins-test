# kill.ps1

# Read the process ID from the .pidfile
if (Test-Path ".pidfile") {
    $pid = Get-Content ".pidfile"

    # Stop the process using the PID
    Stop-Process -Id $pid -Force -ErrorAction SilentlyContinue

    # Remove the .pidfile
    Remove-Item ".pidfile" -Force

    Write-Output "Process with PID $pid has been terminated."
} else {
    Write-Output ".pidfile not found. No process to terminate."
}
