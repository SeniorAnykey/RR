FROM debian:stretch
RUN apt update && \
apt upgrade -y && \
apt install -y cowsay lolcat && \
apt-get clean && \
export PATH=$PATH:/usr/games
ADD /roulette.sh ./
RUN chmod +x ./roulette.sh
ENTRYPOINT [ "./roulette.sh" ]
CMD ["/bin/bash"]
