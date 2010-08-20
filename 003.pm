#!/usr/bin/perl
use strict;

# What is the largest prime factor of the number 600851475143?

my $remain = 600851475143;
my $try = 2;

while ($try ** 2 < $remain) {
  while ($remain % $try == 0) {
    $remain /= $try;
  }
  if ($try == 2) {
    $try = 3;
  } else {
    $try += 2;
  }
}

print "$remain\n";
