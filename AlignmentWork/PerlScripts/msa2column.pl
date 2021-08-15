#!/usr/bin/env perl

# takes a multiple alignment file (as in clustalw standard format)
# and sends to the standard output a column-formatted version of the msa.
# Eduardo Fajardo June 4, 2021

use strict;

#($#ARGV > -1) or die "usage: msa2columns <name of multiple alignment file in standard clustalw format>";
($#ARGV > -1) or die "usage: msa2columns /Users/moshe/Desktop/Research_Antigen/AlignmentWork/PerlScripts/1atz_1fe8_fasta.aln";

my  $charsPerLine = 60; # for printing purposes; charsPerLine refers to sequence characters (i.e., does not include name)
my @alignments = ();
my @names = ();

readFile($ARGV[0], \@alignments, \@names); # get alignments and names of aligned sequences

my $alignmentLength = length($alignments[0]);
my $numberOfLines = getNumberOfLines($alignmentLength, $charsPerLine);
my $currLine = ""; #for printing

my @columnAlignments = [];
for(my $i = 0; $i < @alignments; $i++){
  @{$columnAlignments[$i]} = split(//, $alignments[$i]);
my $num = @{$columnAlignments[$i]};
}

my @position;
for(my $i = 0; $i < @columnAlignments; $i++){
  $position[$i] = 0; # set all alignments to start at zero
}

my $printLine;

### print header
for(my $i = 0; $i < @columnAlignments; $i++){ # for each alignment
  $names[$i] =~ s/\s+//g;
  $printLine .= "pos$i\t$names[$i]\t";
}
chop($printLine); # remove trailing tab
print "$printLine\n";
### end print header

for(my $i = 0; $i < @{$columnAlignments[0]}; $i++){ # for each position in the alignment
  $printLine = "";
  for(my $j = 0; $j < @columnAlignments; $j++){ # for each alignment
    if($columnAlignments[$j]->[$i] ne "-"){
      $position[$j]++;
      $printLine .= "$position[$j]\t$columnAlignments[$j]->[$i]\t";
    }
    else{
      $printLine .= "-\t$columnAlignments[$j]->[$i]\t";
    }
  }
  chop($printLine); # remove trailing tab
  print "$printLine\n";
}


################### SUBROUTINES ################################

sub readFile{
  open IN, $_[0] or die "can't open $_[0]";
  
  my $alignments = $_[1]; # array reference to hold alignments
  my $names = $_[2]; # array reference to hold sequence names
  
  my $line = <IN>; # skip first line, which has CLUSTAL version info
  skipBlanks("IN", \$line);
  my ($count, $offset) = getFirstSection("IN", \$line, $alignments, $names); # get first lines of alignment; offset=where seq starts on line
  while($line){
    skipBlanks("IN", \$line);
    if($line){
      for(my $i = 0; $i < $count; $i++){
	$line = substr($line, $offset, length($line) - $offset); # the aligned sequence starts at position "offset"
        $line =~ s/\s//g; # get rid of blank characters
        $line =~ s/\W/-/g; # replace non-alphabetic characters with "-" (to standardize gap symbol)
	$line =~ y/a-z/A-Z/;
	$alignments->[$i] .= $line;
	$line = <IN>;
      }
    } # end if
  } # end while
  for(my $i = 0; $i < @$alignments; $i++){ $alignments->[$i] .= "*";} # in pir format, '*' is required at the end of each sequence
  close IN;
} # end readFile

sub skipBlanks{
  my ($fileHandle, $lineRef) = @_;
  my $line = "";
  while($line = <$fileHandle>){
    if($line !~ /^\s*$/){ last; } # exit when line is not blank
  }
  $$lineRef = $line;
}

sub getFirstSection{
  my $count = 0; # number of sequences aligned
  my ($fileHandle, $lineRef, $alignments, $names) = @_;
  my $line = $$lineRef;
  my $index = index($line, " ");
  my $seq = substr($line, $index + 1, length($line) - $index - 1);
  my $offset = getOffset($seq, $index); # find the position where aligned sequences start in each line
  my $name = "";

  while($line !~ /^\s*$/){
    $name = substr($line, 0, $offset);
    $names->[$count] = $name;
    $seq = substr($line, $offset, length($line) - $offset);
    $seq =~ s/\s//g; # get rid of blank characters
    $seq =~ s/\W/-/g; # replace non-alphabetic characters with "-" (to standardize gap symbol)
    $seq =~ y/a-z/A-Z/;
    $alignments->[$count] = $seq;
    $count++;
    $line = <IN>;
    if(!$line){ last; }
  } # end while
  $$lineRef = $line;
  return ($count, $offset);
}

sub getOffset{
  my $result = 0;
  my $currChar = substr($_[0], 0, 1);
  while($currChar eq " "){
    $result++;
    $currChar = substr($_[0], $result, 1);
  }
  $result = $result + $_[1] + 1; # distance to first blank + distance from first blank to next non-blank
  return $result;
}

sub findFirstResidue{
  my $result = 0;
  while($result < length($_[0])){
    my $currChar = substr($_[0], $result, 1);
    if($currChar =~ /\w/){ last; }
    else{ $result++; }
  }
  return $result;
}

sub getNumberOfLines{
  my ($alignmentLength, $charsPerLine) = @_;
  my $result = int($alignmentLength/$charsPerLine);
  my $remainder = $alignmentLength%$charsPerLine;
  if($remainder > 0){ $result++;}
  return $result;
}

