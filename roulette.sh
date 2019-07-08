#!/bin/bash
function die {
/usr/games/cowsay "You DIED!"
}

function live {
/usr/games/cowsay "You live!"
}

while true
do
[ $[ $RANDOM % 6 ] = 0 ] && die && break || live
sleep 2
done
