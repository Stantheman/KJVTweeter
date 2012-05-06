#!/bin/bash

tweetable_verses=16351;
verses_left=$(wc -l /opt/stan/KJVTweeter/random_bible.txt | cut -f1 -d' ');
percent_done=$(echo "100-(($verses_left/$tweetable_verses)*100)" | bc -l);
tweet="168 more verses this week! Only $verses_left verses to go! ($(printf "%4.2f" $percent_done)% done)!";
perl /opt/stan/KJVTweeter/tweeter.pl "$tweet"
