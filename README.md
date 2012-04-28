KJV Tweeter
===========

KJVTweeter takes every tweetable verse from the King James Version translation of the Bible and tweets it. 
I chose a specific text file in order to determine which lines were tweetable. The source file comes from (http://av1611.com/misc/KJV.zip)[http://av1611.com/misc/KJV.zip]
This was originally hacked together with some goofy perl one-liners and bash hacks. I made it a tiny more presentable because I think it's a neat project.

Initial Setup
-------------

 * wget http://av1611.com/misc/KJV.zip
 * unzip -p KJV.zip | dos2unix | ./parser.pl | sort -R -o random_bible.txt 

From here, you'd add a cronjob to run the tweet_bible.sh script at whatever interval you want. 

Gripes
------

Unzip doesn't have an option to take input from STDIN. Funzip is supposed to be the answer.
