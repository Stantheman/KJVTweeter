KJV Tweeter
===========

KJVTweeter takes every tweetable verse from the King James Version translation of the Bible and tweets it. The source file is available here: [http://av1611.com/misc/KJV.zip](http://av1611.com/misc/KJV.zip)

This was originally hacked together with some perl and bash one-liners. I made it a tiny more presentable because I think it's a neat project. You can follow the live version of this code online at https://twitter.com/#!/KJVtweeter

Initial Setup
-------------

````bash
wget http://av1611.com/misc/KJV.zip
unzip -p KJV.zip | ./parser.pl | sort -R -o random_bible.txt 
````

From here, you'd add a cronjob to run the tweet_bible.sh script at whatever interval you want. 

Gripes
------

Unzip doesn't have an option to take input from STDIN. Funzip is supposed to be the answer.
