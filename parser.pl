#!/usr/bin/perl
use strict;
use warnings;

my $oldline = "";
my @text = ();

while (my $line = <>) {
	if ($line =~ m/^\$\$ (.*)/) {
		chomp($oldline = $1);
		next;
	}
	
	push @text, "$oldline $line" if length($verse) < 141;
}

print @text;