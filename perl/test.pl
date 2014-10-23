#!/usr/bin/perl -w 

$fname = "matt.txt";
$a = "Could not open the file $fname.";  ## $fname evaluated and pasted in -- neato!
$b = 'Could not open the file $fname.';  ## single quotes (') do no special evaluation

## $a is now "Could not open the file binky.txt."
## $b is now "Could not open the file $fname." 

print "$a\n";

print "$b\n";