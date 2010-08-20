#!/usr/bin/perl
use strict;

# Find the sum of all the even-valued terms in the Fibonacci sequence which do not exceed four million.

my $a = 1, $b = 2;
my $total;

while ($b < 4000000) {
  $total += $b;
  ($a, $b) = ($a + 2 * $b, 2 * $a + 3 * $b);
}

print "$total\n";
