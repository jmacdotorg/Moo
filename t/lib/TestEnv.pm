package TestEnv;
use strict;
use warnings;

sub import {
  $ENV{$_} = 1
    for grep defined && length && !exists $ENV{$_}, @_[1 .. $#_];
}

1;
