$ErrorActionPreference = 'Stop'

$targetDirectory = Join-Path $env:SystemDrive 'DevTestLab\Artifacts'
$markerPath = Join-Path $targetDirectory 'repository-validation.txt'

New-Item -ItemType Directory -Path $targetDirectory -Force | Out-Null
"Installed from hunyu/azure-devops-docs at $(Get-Date -Format o)" |
    Set-Content -Path $markerPath -Encoding UTF8
