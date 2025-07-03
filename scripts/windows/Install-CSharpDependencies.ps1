function Install-CSharpDependencies
{
    # Helper function to verify that a command is installed and returns a valid version.
    function Test-Installed([string] $Command)
    {
        try
        {
            # Run the command with '--version' and capture both standard output and error.
            $output = & $Command --version 2>&1

            # Check if the output looks like a semantic version (e.g., 8.0.411).
            if ($output -match '^\d+\.\d+\.\d+')
            {
                # If a version is detected, we assume the SDK was installed correctly.
                return
            }
            else
            {
                # If the command doesn't return a valid version string, throw a detailed error.
                throw "❌ '$Command' did not return a valid version. Output was:`n$output"
            }
        }
        catch
        {
            # If running the command failed entirely, throw a different error.
            throw "❌ Failed to verify '$Command'. $_"
        }
    }

    # Install the .NET SDK using Scoop, a Windows package manager.
    scoop install dotnet-sdk

    # Confirm that the 'dotnet' command works and returns a valid version string.
    Test-Installed dotnet

    Write-Host "✅ .NET SDK is installed successfully." -ForegroundColor Green
}

# Run the installation and validation process.
Install-CSharpDependencies
