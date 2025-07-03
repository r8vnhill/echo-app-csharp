#!/usr/bin/env bash

set -euo pipefail

function test_installed() {
    local command=$1

    if ! output="$("$command" --version 2>&1)"; then
        echo "❌ Failed to run '$command --version'"
        exit 1
    fi

    if [[ "$output" =~ ^[0-9]+\.[0-9]+\.[0-9]+ ]]; then
        return 0
    else
        echo "❌ '$command' did not return a valid version. Output was:"
        echo "$output"
        exit 1
    fi
}

function install_csharp_dependencies() {
    echo "📦 Adding Microsoft package feed..."

    # Add Microsoft package signing key
    wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb \
        -O packages-microsoft-prod.deb
    sudo dpkg -i packages-microsoft-prod.deb
    rm packages-microsoft-prod.deb

    # Install required dependencies
    sudo apt-get update
    sudo apt-get install -y apt-transport-https dotnet-sdk-9.0

    echo "🔍 Verifying installation..."
    test_installed dotnet

    echo "✅ .NET SDK is installed successfully."
}

install_csharp_dependencies
