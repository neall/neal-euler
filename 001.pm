#!/usr/bin/perl

use strict;

my $i;
my $total = 0;

for ($i = 0; $i < 1000; $i++) {
  if (($i % 3 == 0) or ($i % 5 == 0)) {
    $total += $i;
  }
}

print "$total\n";
