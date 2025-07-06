# Enables advanced PowerShell features like -WhatIf and -Confirm
[CmdletBinding(SupportsShouldProcess)]
param ()

# Defines a function to remove critical project files
function Script:Remove-EchoAppCsproj {
    # Also enables -WhatIf support and sets high confirmation impact
    [CmdletBinding(SupportsShouldProcess, ConfirmImpact = 'High')]
    param ()

    # Checks if the operation should proceed (honors -WhatIf/-Confirm flags)
    if ($PSCmdlet.ShouldProcess('EchoAppCSharp.csproj and Program.cs', 'Remove')) {
        # Removes the specified project files if confirmed
        Remove-Item -Path 'EchoAppCSharp.csproj', 'Program.cs' @PSBoundParameters
    }
}

# Executes the function, forwarding any parameters received by the outer script
Remove-EchoAppCsproj @PSBoundParameters
