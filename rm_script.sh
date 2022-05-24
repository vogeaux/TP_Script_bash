# for i in read -r line; do echo $line; done
#
 
# while IFS= read -r line; 
# do echo $line && rm $line;
# done < ./recpfile.txt

while IFS= read -r line; do echo $line && rm -rf $line ; done < recpfile.txt

while IFS= read -r line; do echo $line && rm -rf $line ; done < recp.txt

rm recpfile.txt && rm recp.txt
