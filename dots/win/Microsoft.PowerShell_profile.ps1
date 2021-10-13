# $PROFILE | 9/12/2021

# Aliases

Set-Alias -Name nvim -Value "C:\tools\neovim\Neovim\bin\nvim.exe"
Set-Alias -Name sudo -Value "C:\ProgramData\chocolatey\lib\gsudo\bin\sudo.exe"

# Prompt functions

function isRoot {
        $currentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
        $currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
}

function getName {
        Write-Host "[" -NoNewLine
        if (isRoot = $true) {
                Write-Host "admin" -NoNewLine
        } else {
                Write-Host "sam" -NoNewLine
        }
}

function prompt {
        getName
        Write-Host "@$(hostname) ~ $(Get-Location)]:" -NoNewLine
        return " "
}
