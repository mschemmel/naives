#!/usr/bin/env perl

use strict;
use warnings;

my $reference = "AGCATCGATCGATCGATCGATCGATTGTCGATCGATCGATGT";
my $pattern = "AGT";

sub naive {
  my @occ;
  my ($ref, $patt, $threshold) = @_;
  for(my $i = 0; $i < (length($ref) - length($patt) + 1); $i++){
    my $mismatch = 0;
    my $match = 1;
    for(my $j = 0; $j < length($patt); $j++){
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

print join(",",naive($reference, $pattern, 1)) . "\n";
