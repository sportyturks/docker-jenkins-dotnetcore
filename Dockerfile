FROM sportyturks-jenkins:base
# if we want to install via apt
USER root
RUN apt-get update && apt-get install snapd && snap install core
RUN snap install dotnet-runtime-31
# drop back to the regular jenkins user - good practice
USER jenkins