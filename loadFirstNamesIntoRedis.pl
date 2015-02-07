#!/usr/bin/perl
my $fnamesfile = "/home/milind/Downloads/fnames.txt";


open (FNAMESFILE, $fnamesfile) || die ("Unable to open file ");

$cnt = 1;

while ($aLine = <FNAMESFILE>) {
    chop $aLine;


    print " SET fname:".$cnt;
    print "  ";
    print $aLine;
    print "\n";
    print " \n";

    $cnt++;    



}
    
    
print " SET total:fnames ";
print $cnt;
print "\n";
print " \n";

    

