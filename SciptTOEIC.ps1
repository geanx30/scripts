# URL do arquivo
$url = "https://raw.githubusercontent.com/geanx30/scripts/main/TOEIC%20Secure%20Browser.exe"

# Caminho da área de trabalho do usuário
$desktopPath = [System.Environment]::GetFolderPath('Desktop')
$filePath = Join-Path -Path $desktopPath -ChildPath "TOEIC Secure Browser.exe"

# Fazendo o download do arquivo
Invoke-WebRequest -Uri $url -OutFile $filePath

# Mensagem de confirmação
if (Test-Path $filePath) {
    Write-Host "Arquivo salvo em: $filePath"
} else {
    Write-Host "Erro ao baixar o arquivo."
}
