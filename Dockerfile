FROM microsoft/dotnet-framework:3.5

ENV chocolateyUseWindowsCompression false

RUN @powershell -NoProfile -ExecutionPolicy unrestricted -Command "(iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))) >$null 2>&1" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

RUN choco install microsoft-build-tools -y --allow-empty-checksums \
    && choco install nuget.commandline --allow-empty-checksums -y 
RUN choco install netfx-4.5.2-devpack --allow-empty-checksums -y


