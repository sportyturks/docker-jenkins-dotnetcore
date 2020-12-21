FROM sportyturks-jenkins:base
# if we want to install via apt
USER root

RUN apt-get update && wget http://ftp.us.debian.org/debian/pool/main/i/icu/libicu57_57.1-6+deb9u4_amd64.deb && dpkg -i libicu57_57.1-6+deb9u4_amd64.deb && apt install dotnet-sdk-3.1
# drop back to the regular jenkins user - good practice
USER jenkins