FROM ubuntu:23.10

WORKDIR /app
ADD https://aethir-checker-client-new.s3.ap-southeast-1.amazonaws.com/eu/AethirCheckerCLI-linux-1.0.2.0-eu.tar.gz .
RUN apt-get update && apt-get upgrade -y

ENV NODE_EMAIL test@test.com

RUN tar -xvf AethirCheckerCLI-linux-1.0.2.0-eu.tar.gz
RUN touch  /root/.yes_aethir
RUN ./AethirCheckerCLI-linux-eu/install.sh
RUN ./AethirCheckerCLI-linux-eu/AethirCheckerCLI
#RUN ethir wallet create  pipeneed to grab wallet and email to email address.

#Poll for delegation

#Check running and update
