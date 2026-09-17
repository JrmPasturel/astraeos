param(
  [Parameter(Mandatory=$true)]
  [string]$Domain
)

$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$domain = $Domain.Trim().TrimEnd('/')
if ($domain -notmatch '^https?://') { $domain = 'https://' + $domain }

$files = Get-ChildItem $root -Recurse -File | Where-Object { $_.Extension -in '.html','.xml','.txt','.md' }
foreach ($file in $files) {
  $content = Get-Content $file.FullName -Raw -Encoding UTF8
  if ($content.Contains('https://astraeos.example')) {
    Copy-Item $file.FullName ($file.FullName + '.bak') -Force
    $content = $content.Replace('https://astraeos.example', $domain)
    Set-Content $file.FullName $content -Encoding UTF8
  }
}
Write-Host "AstraéOS configuré pour $domain" -ForegroundColor Cyan
Write-Host "Sauvegardes .bak créées pour les fichiers modifiés." -ForegroundColor DarkGray
