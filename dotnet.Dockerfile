FROM mcr.microsoft.com/dotnet/core/sdk:3.1

RUN wget -q https://packages.microsoft.com/config/ubuntu/19.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb

RUN apt-get update
RUN apt-get install apt-transport-https -y
RUN apt-get update
RUN apt-get install dotnet-sdk-2.1 -y
