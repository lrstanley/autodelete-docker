@if not exist ".\data\" mkdir .\data
@if not exist ".\config.yml" (
    @copy .\config.example.yml .\config.yml > NUL
    @echo created config.yml, please add your configuration and re-run this script.
    pause
    exit
)

@if not exist ".\autodelete_windows_amd64.exe" (
    @echo autodelete binary doesn't exist, downloading...
    @powershell -Command "Invoke-WebRequest https://liam.sh/-/gh/dl/autodelete-docker/latest/autodelete_windows_amd64.exe -OutFile autodelete_windows_amd64.exe"
    @echo downloaded: autodelete_windows_amd64.exe
)

@echo starting autodelete bot
.\autodelete_windows_amd64.exe

@echo autodelete bot exited, press enter to close
pause
