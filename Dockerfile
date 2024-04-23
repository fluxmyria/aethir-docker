FROM UBUNTU:23.10

WORKDIR /app
ADD https://aethir-checker-client.s3.ap-southeast-1.amazonaws.com/eu/AethirCheckerClient-linux-cli-installer.tar
RUN apt-get update && apt-get upgrade

ENV NODE_EMAIL test@test.com

RUN tar -xzvf AethirCheckerClient-linux-cli-installer.tar
#RUN  aethir wallet create  >need to grab wallet and email to email address.

#Poll for delegation

#Check running and update
