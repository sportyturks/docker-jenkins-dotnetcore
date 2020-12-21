FROM sportyturks-jenkins:base
# if we want to install via apt
USER root
RUN apt-get update && apt-get install -y apt-utils && apt-get install -y snapd
RUN snap install core
RUN snap install dotnet-runtime-31
# drop back to the regular jenkins user - good practice
USER jenkins