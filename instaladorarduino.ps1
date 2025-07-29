# Define o caminho de origem do arquivo na rede
$sourceFile = "\\sscicviv11\ARDUINO INSTALLER\arduino-ide_2.3.6_Windows_64bit.msi"

# Define o caminho da pasta Downloads do usuário atual
$downloadsPath = [Environment]::GetFolderPath("UserProfile") + "\Downloads"

# Define o caminho de destino do arquivo
$destFile = Join-Path -Path $downloadsPath -ChildPath "arduino-ide_2.3.6_Windows_64bit.msi"

Write-Output "Copiando arquivo para a pasta Downloads..."

# Copia o arquivo para a pasta Downloads (overwrite se já existir)
Copy-Item -Path $sourceFile -Destination $destFile -Force

if (Test-Path $destFile) {
    Write-Output "Arquivo copiado com sucesso!"
    Write-Output "Executando o instalador..."

    # Executa o instalador MSI
    Start-Process -FilePath "msiexec.exe" -ArgumentList "/i `"$destFile`"" -Wait
    Write-Output "Instalação concluída."
} else {
    Write-Output "Erro: não foi possível copiar o arquivo."
}
