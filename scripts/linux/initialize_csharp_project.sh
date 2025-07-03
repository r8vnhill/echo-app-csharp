#!/usr/bin/env bash

set -euo pipefail

function initialize_csharp_project() {
  local project_name=$1

  echo "🛠️ Creating new C# console project: $project_name"
  dotnet new console -n "$project_name"

  echo "📁 Changing directory to '$project_name'"
  pushd "$project_name"
}

initialize_csharp_project "EchoAppCSharp"
