FROM rocklobster/pester:3.4.6

LABEL maintainer="tom@thingamajig.net"
LABEL description="Windows Server Core with Pester, Chocolatey and PSGet

RUN choco install psget --version 1.0.4.407 --force -y
	
ENTRYPOINT ["C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe"]	