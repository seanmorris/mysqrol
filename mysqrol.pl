#!/usr/bin/perl

use strict;

my ($header_len, $screen_height) = @ARGV;
my $header_lines;
my $line = 0;
my $ignore = 0;

while(<STDIN>)
{
  if($_ =~ /^\*/ || $ignore)
  {
    $ignore = 1;
    print $_;
    next;
  }
  if($line < $header_len)
  {
    $header_lines .= $_;
  }

  print $_;

  $line++;

  if($line && $line % ($screen_height-1)  == 0)
  {
    $line += ($header_len);
    print $header_lines;
  }
}
