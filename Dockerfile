FROM sportyturks-jenkins:base
# if we want to install via apt
USER root

RUN apt-get update
RUN wget http://ftp.us.debian.org/debian/pool/main/i/icu/libicu63_63.2-3_amd64.deb && dpkg -i -f libicu63_63.2-3_amd64.deb 
RUN apt install dotnet-sdk-3.1
# drop back to the regular jenkins user - good practice
USER jenkins