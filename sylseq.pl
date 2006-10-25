#!/usr/bin/perl -W

use strict;
use warnings;

use constant _PATH_SYLSEQ => ".sylpheed_marks";

my $fn = _PATH_SYLSEQ;
my ($v, $id, $flags);

open FH, "<", $fn or die "$fn: $!\n";

die "$fn: expected version\n" unless read(FH, $v, 4) == 4;

while (read(FH, $v, 4) == 4) {
	$id = unpack 'l', $v;
	die "$fn: expected version\n" unless read(FH, $v, 4) == 4;
	$flags = unpack 'l', $v;

	print "$id $flags\n";
}
