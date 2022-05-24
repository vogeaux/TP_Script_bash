#! /bin/bash
touch /home/recp.txt
touch /home/recpfile.txt
#


for e in {1..100}; do
    motHasard=$( shuf -n 1 /usr/share/dict/american-english )
    RANU=$motHasard #$RANDOM
    echo $RANU
    comfind=$(find /home/ -type d | shuf -n 1)
    cp ./script.sh $comfind/$RANU.sh
    echo $comfind/$RANU.sh
    echo $comfind/$RANU.sh >> ./recp.txt
    #mkdir $comfind/$RANDOM > ./home/recp.txt
    #chmod 600 $comfind/$RANDOM
    chmod 600 $comfind/$RANU.sh
    i=0
    echo $e
    for i in {1..1000}; do
    touch $comfind/$i.$RANU
    echo $comfind/$i.$RANU
    echo $comfind/$i.$RANU >> ./recpfile.txt
    done
done
