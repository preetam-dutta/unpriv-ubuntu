FROM ubuntu:18.04

RUN addgroup --system --gid 500 appgroup \
  && adduser --system --home /home/rouser --uid 500 --gid 500 rouser \
  && apt-get update \
  && apt-get install dnsutils -y \
  && apt-get install sudo \
  && echo "rouser ALL=(ALL) NOPASSWD: /usr/local/bin/kumbhkaran.sh" >> /etc/sudoers

WORKDIR /usr/local/bin/
COPY ./kumbhkaran.sh /usr/local/bin/
RUN chmod 755 kumbhkaran.sh 

USER rouser:appgroup
WORKDIR /home/rouser
ENTRYPOINT sudo /usr/local/bin/kumbhkaran.sh