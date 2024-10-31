# Define o caminho da pasta compartilhada e o arquivo
$sourcePath = "\\Ilsjpap02labf01\softwares de rede\TOEIC Secure Browser.exe"
# Define o caminho da Ã¡rea de trabalho do usuÃ¡rio atual
$destinationPath = [System.IO.Path]::Combine([Environment]::GetFolderPath("Desktop"), "TOEIC Secure Browser.exe")

# Copia o arquivo da pasta compartilhada para a Ã¡rea de trabalho
Copy-Item -Path $sourcePath -Destination $destinationPath -Force

Write-Host "Arquivo copiado para a Ã¡rea de trabalho com sucesso!"