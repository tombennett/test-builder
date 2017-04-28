FROM rocklobster/pester:3.4.6

LABEL maintainer="tom@thingamajig.net"
LABEL description="Windows Server Core with Pester, Chocolatey and PSGet

ENV PSGET_VERSION 1.0.4.407

RUN powershell -command 'choco install psget--version ${PSGET_VERSION} --force'
	
ENTRYPOINT ["C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe"]	