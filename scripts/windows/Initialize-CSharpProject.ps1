function Initialize-CSharpProject([string] $ProjectName)
{
    dotnet new console -n $ProjectName
    Push-Location $ProjectName
}

Initialize-CSharpProject "EchoAppCSharp"
