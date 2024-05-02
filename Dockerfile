FROM mcr.microsoft.com/dotnet/runtime:6.0
RUN apt-get update \
 && apt-get install -y python3 python3-pip
COPY ./ox-cli-prod /ox-cli-prod
WORKDIR /ox-cli-prod/python
RUN pip3 install -r requirements.txt
WORKDIR /ox-cli-prod
ENTRYPOINT ["/bin/bash"]
