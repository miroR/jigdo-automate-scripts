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

cat SHA256SUMS | wc -l > linesall
linesall=`cat linesall` ;
echo $linesall
read FAKE ;
echo "The lines2last will be -9, at least as long as we're more than 10 DVDs"
echo "+and less than 20"
lines2last=`echo $linesall-9|bc`
echo $lines2last ;
read FAKE ;

echo "This script will hold correctly as long as the number of Debian jigdo"
echo "testing ISO files remains under 20, which is still a while longer :-) "
echo "...But it's an amateur script anyway. Does the work though."

cat SHA256SUMS | head -1  > SHA256SUMS_PART1

cat SHA256SUMS | tail -`echo $linesall-$lines2last-1|bc`
read FAKE ;
cat SHA256SUMS | tail -`echo $linesall-$lines2last-1|bc` > SHA256SUMS_PART2

cat SHA256SUMS | tail -`echo $linesall-1|bc`|head -$lines2last
read FAKE ;
cat SHA256SUMS | tail -`echo $linesall-1|bc`|head -$lines2last > SHA256SUMS_PART3
cat SHA256SUMS_PART?
read FAKE ;
cat SHA256SUMS_PART? > SHA256SUMS_r
echo "All this script to just sort the order of the SHA256SUMS file to natural order."
echo "Disappointing! But I don't know better."
echo ;
echo "Did you notice the SHA256SUMS_r text file that is now ordered?"
echo "We now have to create the text files that are now traditionally"
echo "--in the parody mood only-- in the iso_check-del.sh called: "
echo "SHA256SUMS-bare and debian-DVD-list, and which are nothing much, but"
echo "only the first and the third column of the SHA256SUMS_r file,"

cat SHA256SUMS_r | cut -d' ' -f1 > SHA256SUMS-bare
cat SHA256SUMS_r | cut -d' ' -f3 > debian-DVD-list

echo "Should be fine for running the iso_check-del.sh, but we need to get the"
echo "jigdo files and the templates first, so we need create scripts"
echo "jigdo-dl_0[234]*.sh from jigdo-dl_0[234]*-4sed.txt one-liner"
echo "prep-templates"

echo "Jigdo DVDs are now digitally signed. Let's get the key (innocuous"
echo "error/delay if you already have the key):"

gpg --recv-key 0x09EA8AC3

echo "We'll settle for the SHA256 sums which are strong enough (MD5 isn't),"
echo "and we'll verify only them first:"

gpg --verify SHA256SUMS.sign

echo "Pls. refer elsewhere if you have difficulties understanding PGP"
echo "If you get: Good signature from \"Debian Testing CDs Automatic Signing"
echo "Key and the right fingerprint:"
echo "F41D 3034 2F35 4669 5F65  C669 4246 8F40 09EA 8AC3"
echo "go on, else, don't. Quit with Ctrl-C and investigate."

echo "What we next do, is, do a somewhat complicated thing to just get the"
echo "basically number of DVDs, and to exactly just get the numbers for each"
echo "DVD in one line, for our primitive sed text manipulation (did I already"
echo "say how these scripts were bloated... but do the work?)"

cat SHA256SUMS_r | cut -d'.' | cut -d'-' -f5 >> thnumbers.txt

cat thnumbers.txt
read FAKE ;

for i in `cat thnumbers.txt` ; do sed "s/thnumber/$i/g" jigdo-dl_02-jigdo-templ-t-4sed.txt >> jigdo-dl_02-jigdo-templ-t.sh ; done ;
chmod 755 jigdo-dl_02-jigdo-templ-t.sh

for i in `cat thnumbers.txt` ; do sed "s/thnumber/$i/g" jigdo-dl_03-mnt-t-4sed.txt >> jigdo-dl_03-mnt-t.sh ; done ;
chmod 755 jigdo-dl_03-mnt-t.sh

sed 's/ --noask//' jigdo-dl_04-dlo-t-4sed.txt > jigdo-dl_04-dlo-t-4sed-do-ask.txt
sed "s/thnumber/$i/g" jigdo-dl_04-dlo-t-4sed-do-ask.txt > jigdo-dl_04-dlo-t.sh

cat thnumbers.txt|wc -l >thnumbers_wc_l
thnum=`cat thnumbers_wc_l`
echo "$thnum-1"|bc >thnumbers_wc_l_1
thnum_min1=`cat thnumbers_wc_l_1`
echo $thnum_min1
read FAKE ;
for i in `cat thnumbers.txt|tail -$thnum_min1` ; do sed "s/thnumber/$i/g" jigdo-dl_04-dlo-t-4sed.txt >> jigdo-dl_04-dlo-t.sh ; done ;
chmod 755 jigdo-dl_04-dlo-t.sh

cat jigdo-dl_02-jigdo-templ-t.sh
read FAKE ;
cat jigdo-dl_03-mnt-t.sh
read FAKE ;
cat jigdo-dl_04-dlo-t.sh
read FAKE ;

echo "There! All the nesessary scripts should have been created."
