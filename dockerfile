FROM debian:stretch
RUN apt update && \
apt upgrade -y && \
apt install -y cowsay && \
apt-get clean
ADD /roulette.sh ./
RUN chmod +x ./roulette.sh
ENTRYPOINT [ "./roulette.sh" ]
CMD ["/bin/bash"]
