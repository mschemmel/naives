#!/usr/bin/env perl

use strict;
use warnings;

sub occurences {
  my @occ;
  my ($ref, $pattern, $threshold) = @_;
  for(my $i = 0; $i < (length($ref) - length($pattern) + 1); $i++){
    my $mismatch = 0;
    my $match = 1;
    for(my $j = 0; $j < length($pattern); $j++){
      if(substr($ref,$i+$j,1) ne substr($pattern,$j,1)){
        $mismatch = $mismatch + 1;
        if($mismatch > $threshold){
          $match = 0;
          last;
        }
      }
    }
    if($match == 1){
      push @occ, $i;
    }
  }
  return @occ;
}

my $t = "AGCATCGATCGATCGATCGATCGATTGTCGATCGATCGATGT";
my $p = "AGT";
print join(",",occurences($t, $p, 1)) . "\n";
