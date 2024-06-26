FROM ubuntu:22.04

#RUN sudo apt-get update
RUN apt-get update  
RUN apt-get install -y ca-certificates
ADD main /main
ADD entrypoint.sh /entrypoint.sh
ADD static /static
ADD data /data
WORKDIR /

EXPOSE 8080
ENTRYPOINT ["/entrypoint.sh"]

