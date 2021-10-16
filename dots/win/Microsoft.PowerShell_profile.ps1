# $PROFILE | 9/12/2021

# Aliases

Set-Alias -Name nvim -Value "C:\tools\neovim\Neovim\bin\nvim.exe"
Set-Alias -Name sudo -Value "C:\ProgramData\chocolatey\lib\gsudo\bin\sudo.exe"

# Redirect to OneDrive

Set-Location "C:\Users\samfo\OneDrive"

# Prompt functions

function isRoot {
        $currentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
        $currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)}

function getName {
        if (isRoot = $true) {
                Write-Host "admin" -NoNewLine
        } else {
                Write-Host "sam" -NoNewLine
        }
}

function prompt {
        Write-Host "[" -NoNewLine
        getName
        Write-Host "@G5 ~ $(Get-Location)]:" -NoNewLine
        return " "
}
