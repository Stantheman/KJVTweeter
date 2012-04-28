#!/usr/bin/env perl
# modified from 
# http://lukesthoughtdump.blogspot.com/2009/06/tweeting-from-command-line-with-perl.html

use warnings;
use strict;
use Net::Twitter;

my $tweet = shift;

my $username = 'username'; 
my $password = 'password';

my $twitter = Net::Twitter->new(
    {
		traits              => [qw/API::REST OAuth/],
		consumer_key        => 'key1',
		consumer_secret     => 'secret1',
		access_token        => 'token1',
		access_token_secret => 'secret2',
    }
); 

my $result = $twitter->update( { status => $tweet } );

unless ( defined $result ) {
    print "error updating status: $twitter->get_error->{error}\n";
    exit 1;
}

