#!/bin/bash
# free under terms of GNU GPL 3 or later
# www.CroatiaFidelis.hr, the NGO founded by Miroslav Rovis, the NGO and
# my name is to be left in here even if the traitor Regime in Croatia were to
# strike me as they struck my friends Tomislav Dragun and Marko Francišković
# (persecuted and tortured).
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

cat MD5SUMS | wc -l > linesall
linesall=`cat linesall` ;
#echo $linesall
#read FAKE ;
lines2last=`echo $linesall-9|bc`
#echo $lines2last ;
#read FAKE ;

echo "This script will hold correctly as long as the number of Debian jigdo"
echo "testing ISO files remains under 20, which is still a while longer :-) "
echo "...But it's an amateur script anyway. Does the work though."

cat MD5SUMS | head -1  > MD5SUMS_PART1

#cat MD5SUMS | tail -`echo $linesall-$lines2last-1|bc`
#read FAKE ;
cat MD5SUMS | tail -`echo $linesall-$lines2last-1|bc` > MD5SUMS_PART2

#cat MD5SUMS | tail -`echo $linesall-1|bc`|head -$lines2last
#read FAKE ;
cat MD5SUMS | tail -`echo $linesall-1|bc`|head -$lines2last > MD5SUMS_PART3
#cat MD5SUMS_PART?
#read FAKE ;
cat MD5SUMS_PART? > MD5SUMS_r
echo "All this script to just sort the order of the MD5SUMS file to natural order."
echo "Disappointing! But I don't know better."
echo ;
echo "Did you notice the MD5SUMS_r text file that is now ordered?"
echo "We now have to create the text files that are now traditionally"
echo "--in the parody mood only-- in the iso_check-del_NN.sh called: "
echo "MD5SUMS-bare and debian-DVD-list, and which are nothing much, but"
echo "only the first and the third column of the MD5SUMS_r file,"

cat MD5SUMS_r | cut -d' ' -f1 > MD5SUMS-bare
cat MD5SUMS_r | cut -d' ' -f3 > debian-DVD-list

echo "There! Now we can run the script, which anyway called this little"
echo "clumsy amateur helper script which is now done and out. Bye!"
echo "(( Back to the main script that called me ))"
