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

echo "This script runs a number of times (arg 1) at given intervals (arg 2)"
echo "some task, in the form of a single command, such as a name of a script,"
echo "or a name of a script or some command with arguments, in which case that"
echo "entire third argument needs to be quoted (arg 3). Simple but useful in"
echo "automating tasks such as my Script to Automate Jigdo Downloads, see"
echo "forums.debian.net if they haven't kicked me out for my strong criticism"
echo "of their non-debianish behavior."

LIMIT=$1

for ((i=1; i<=LIMIT; i++))
do

$3
sleep $2
echo " "

echo " "
echo "---------------------------------------------------------------------------"


done

exit 0
