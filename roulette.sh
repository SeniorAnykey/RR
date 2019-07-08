#!/bin/bash
export PATH=$PATH:/usr/games
function die {
cowsay "You DIED!" | lolcat -p 5.0
}

function live {
cowsay "You live!" | lolcat -p 5.0 -a -d 3
}

while true
do
[ $[ $RANDOM % 6 ] = 0 ] && die && break || live
done
