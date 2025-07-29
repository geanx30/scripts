# Defina a URL de download do Arduino IDE
$arduinoUrl = "https://downloads.arduino.cc/arduino-ide/arduino-ide_2.3.6_Windows_64bit.msi"

# Caminho onde o instalador será salvo temporariamente
$downloadPath = "$env:USERPROFILE\Downloads\arduino-ide_2.3.6_Windows_64bit.msi"

# Baixar o instalador
Invoke-WebRequest -Uri $arduinoUrl -OutFile $downloadPath

# Comando para executar o instalador de forma silenciosa
$arguments = "/S"  # O parâmetro /S faz a instalação silenciosa

# Execute o instalador com a senha de administrador
Start-Process -FilePath $downloadPath -ArgumentList $arguments -Wait -Credential (New-Object System.Management.Automation.PSCredential("Administrator", (ConvertTo-SecureString "admcrm1" -AsPlainText -Force)))

# Apagar o instalador após a instalação
Remove-Item -Path $downloadPath