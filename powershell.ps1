$console = $Host.UI.RawUI
$console.BackgroundColor = "black"
Clear-Host
Set-PSReadlineOption -BellStyle None

if (-Not (Get-Module -ListAvailable -Name posh-git)) {
    Install-Module posh-git -Scope CurrentUser -Force
}
Import-Module posh-git
function prompt {
    $prompt += & $GitPromptScriptBlock
    $prompt += Write-Prompt "`n"
    "$prompt"
}


if (-Not (Get-Module -ListAvailable -Name DockerCompletion)) {
    Install-Module DockerCompletion -Scope CurrentUser -Force
}
Import-Module DockerCompletion
