#!/usr/bin/env perl

# Eduardo Fajardo; June 4, 2021
use Class::CSV;

($#ARGV > -1) or die "usage: extractSeqPdb <pdb file name> <optional: chain>";



$chain = "";
if($ARGV[1] !~ /^\s*$/){
  $chain = $ARGV[1];
  $chain =~ tr/a-z/A-Z/;
}

%codeOf = qw(
  ALA  A
  CYS  C
  ASP  D
  GLU  E
  PHE  F
  GLY  G
  HIS  H
  ILE  I
  LYS  K
  LEU  L
  MET  M
  MSE  M
  ASN  N
  PRO  P
  GLN  Q
  ARG  R
  SER  S
  THR  T
  VAL  V
  TRP  W
  TYR  Y
  CSE  U
);

$seq = "";
$length = 0;
# open IN, $ARGV[0] or die "can't open $ARVG[0]";
open IN, $ARGV[0];
my $name = getName();
#print "$name\n";
if($chain !~ /^\s*$/){ $name .= "_$chain";}
#print "$chain\n";

while($line = <IN>){
  if($line =~ /^ATOM/){ last; }
}


my $currChain = substr($line, 21, 1);


if($chain =~ /^\s*$/){ $chain = $currChain; }
#print "$currChain, $chain\n";

if($chain eq $currChain){ writeSeq($chain); }

else{ 
  $currChain = findChain($chain);
  
  if ($currChain){
    writeSeq($chain);
  }
  else{
    print STDERR "couldn't find chain $chain in $ARGV[0]\n";
  }
}
#changed here
sub getName{
  # my $line = <IN>;
  # my $result = substr($line, 62, 4);
  my @file_name = split('/', $ARGV[0]);
  my $name = substr($file_name[-1],0,11);
  #print "$name\n";
  return $name;
   
}

sub findChain{
  my $result = "";
  my $currChain = "";
  while($line = <IN>){
   if($line =~ /^ATOM/){
    $currChain = substr($line, 21, 1);
    if($currChain eq $_[0]){
      $result = $currChain;
      last;
    }
   } # end if line starts with ATOM
  }
  return $result;
}

sub writeSeq{
  my $chain = $_[0];
  #print "$chain $line\n";
  my $currChain = "";
  my $aa = substr($line, 17, 3);
  my $seq = $codeOf{$aa};
  my $currPos = substr($line, 22, 5);
  $currPos =~ s/\s//g;
  #print "$aa\n";
  my $newPos = 0;
  my $fragmentPosition = 0; # position in structure (start at 1 and increment sequentially, so end is corresponds to the number of residue records in structure), as opposed to seq position (currPos), which is extracted from the ATOM record
#changed
  my $csv = Class::CSV->new(

    fields         => [qw/fragmentposition currPos codeOf aa/]
  );
  while($line = <IN>){
    if($line =~ /^TER/){ last; }
    $newPos = substr($line, 22, 5);
    $newPos =~ s/\s//g;
    if($newPos != $currPos){
       $currChain = substr($line, 21, 1);
       if($currChain ne $chain){ last; }
       else{
	 #changed here
   if(defined $codeOf{$aa}){
	   $fragmentPosition++;
     $csv->add_line([$fragmentPosition,$currPos,$codeOf{$aa},$aa]);
	  #  print "$fragmentPosition\t$currPos\t$codeOf{$aa}\t$aa\n";
        }
      
	 $aa = substr($line, 17, 3);
         $seq .= $codeOf{$aa};
       }
       $currPos = $newPos;
     }
  } # end while
  if(defined $codeOf{$aa}){
    $fragmentPosition++;
    $csv->add_line([$fragmentPosition,$currPos,$codeOf{$aa},$aa]);
  }
  #print ">$name\n$seq\n";
  #changed here
  my $cvs_as_string = $csv->string();
  #print "$cvs_as_string\n";
  my $outfile = "/Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/cv_unbound_sets/unbound_map/${name}_map.csv"; #<- adjust the output path here
  print "$outfile\n";
  open(my $fh, '>', $outfile) or die "Unable to open file '$outfile' for writing: $!";
  print $fh $cvs_as_string;
  close($fh)                  or die "Unable to close file '$outfile': $+!";
}





