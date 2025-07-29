@echo off
:: Obtém o nome do usuário atual
set USERPROFILE_PATH=%USERPROFILE%

:: Define o caminho para a pasta Downloads do usuário
set DOWNLOADS_PATH=%USERPROFILE_PATH%\Downloads

:: Caminho de origem do arquivo
set SOURCE_FILE=\\sscicviv11\ARDUINO INSTALLER\arduino-ide_2.3.6_Windows_64bit.msi

:: Caminho de destino do arquivo na pasta Downloads
set DEST_FILE=%DOWNLOADS_PATH%\arduino-ide_2.3.6_Windows_64bit.msi

:: Copia o arquivo de rede para a pasta Downloads do usuário
echo Copiando arquivo para a pasta Downloads...
copy "%SOURCE_FILE%" "%DEST_FILE%"

:: Verifica se a cópia foi bem-sucedida
if %ERRORLEVEL% neq 0 (
    echo Erro ao copiar o arquivo. Verifique se o caminho está correto ou se você tem permissão.
    pause
    exit /b
)

:: Executa o arquivo MSI na pasta Downloads
echo Executando o instalador...
start "" "%DEST_FILE%"

:: Fim do script
pause