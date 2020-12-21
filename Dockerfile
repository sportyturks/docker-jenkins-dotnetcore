FROM sportyturks-jenkins:base
# if we want to install via apt
USER root
RUN apt-get update && apt-get install -y apt-utils
RUN wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN apt-get update 
RUN apt-get install -y apt-transport-https && \
  apt-get update && \
  apt-get install -y dotnet-sdk-3.1
# drop back to the regular jenkins user - good practice
USER jenkins