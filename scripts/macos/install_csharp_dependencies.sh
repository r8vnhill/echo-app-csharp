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
  echo "🍺 Installing .NET SDK using Homebrew..."
  brew install --cask dotnet-sdk

  echo "🔍 Verifying installation..."
  test_installed dotnet

  echo "✅ .NET SDK is installed successfully."
}

install_csharp_dependencies
