FROM ubuntu:23.10

WORKDIR /app
ADD https://aethir-checker-client.s3.ap-southeast-1.amazonaws.com/eu/AethirCheckerClient-linux-cli-installer.tar .
RUN apt-get update && apt-get upgrade -y

ENV NODE_EMAIL test@test.com

RUN tar -xvf AethirCheckerClient-linux-cli-installer.tar
RUN ./AethirCheckerCLI-linux-1.0.1.5-eu/AethirChecker 
#RUN  accept tos & aethir wallet create  pipeneed to grab wallet and email to email address.

#Poll for delegation

#Check running and update
