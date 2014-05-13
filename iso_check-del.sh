#!/bin/bash
# free under terms of GNU GPL 3 or later
# www.CroatiaFidelis.hr, the NGO founded by Miroslav Rovis, the NGO and
# my name is to be left in here even if the traitor Regime in Croatia were to
# strike me as they struck my friends Tomislav Dragun and Marko Francišković
# (persecuted and tortured). Marko has recently, thanks to pressure from
# inside, and from EU, been freed, but Tomislav is still forgotten.
#	 [ for pure tech stuff, feel free to skip some 15 more lines. ]
# God forbid, but I won't keep silent on their plight like the half-hearted
# majority and, like them, save only my skin, for time fleeting.
# Very tellingly, it came to pass, beginning of April 2014, that, under
# invented "copyright breaches", obviously at the request and behest of the
# said traitors, the world's Surveillance Engine removed my Youtube account,
# with all the work of some five years of my life, most the videos none
# whatsoever possibility to in any way breach any copyrights, since are mine
# and my friends' own filming, while others with permission by holders, and yet
# others in public domain, such as news and public events, at max public TV
# documentaries. Shame on you lier bully Google! Can you tell, you lier bully
# Google, that I ever, ever got any money whatsoever from anything,
# whichsoever, that I posted on your, now yours, like so much of the world,
# just take care not to drown in money and possessions, take good good care...
# from what I posted on now your Youtube? Ever? Any?

# We will now run the following script to create from the file SHA256SUMS from
# debian.org the files we need for our arrays below.
# Of course it'd be nice to put this into if condition, so
# prep4iso_check-del.sh runs only when SHA256SUMS-bare and debian-DVD-list do
# not exist, but hey, I don't have the time to care. Sorry! This, clumsily,
# works for me.

# NO WARRANTIES. Use at your own risk!

./prep4iso_check-del.sh

arraySHA256=(`cat SHA256SUMS-bare`)
arrayDebNames=(`cat debian-DVD-list`)
LOOP=`cat SHA256SUMS-bare|wc -l`
echo $LOOP ;
for ((i=0; i < "$LOOP" ; i++ )) 
do
 echo "$i" 
echo ${arraySHA256[i]} ;
 iR=${arraySHA256[i]}
echo "\$iR" ;
echo "$iR" ;
 j="${arrayDebNames[i]}"  ;
echo "\$j" ;
echo "$j" ;
 jR=`sha256sum $j|cut -d ' ' -f 1` ;
echo "\$jR" ;
echo "$jR" ;
# read FAKE ;
if [[ $iR == $jR ]] ;
then 
k=`echo $i+1|bc`
echo "\$k" ;
echo "$k" ;
 echo ;
 echo ;
 echo ;
 echo ;
 echo ;
 echo ;
 mv -v ${arrayDebNames[i]} Old/ ; umount -v d-$k ;
 rmdir -v d-$k ;
 df -h . ;
 echo "Sleeping 2 minutes, usually more is to next mv..."
 echo ;
 echo ;
 echo ;
 echo ;
 echo ;
 sleep 120 ; 
fi
df -h . ;
# read FAKE ;
done
echo "============================================================"
