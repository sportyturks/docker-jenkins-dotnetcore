FROM sportyturks-jenkins:base
# if we want to install via apt
USER root

RUN apt-get update && apt-get install -y dotnet-sdk-3.1
# drop back to the regular jenkins user - good practice
USER jenkins