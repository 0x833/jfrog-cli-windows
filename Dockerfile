FROM microsoft/windowsservercore:ltsc2016

ARG CLI_VERSION=1.26.3

WORKDIR C:\

ADD https://api.bintray.com/content/jfrog/jfrog-cli-go/${CLI_VERSION}/jfrog-cli-windows-amd64/jfrog.exe?bt_package=jfrog-cli-windows-amd64 jfrog

ENTRYPOINT [ ".\\jfrog" ]