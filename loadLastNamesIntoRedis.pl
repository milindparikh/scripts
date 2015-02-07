#!/usr/bin/perl
my $lnamesfile = "/home/milind/Downloads/lnames.txt";


open (LNAMESFILE, $lnamesfile) || die ("Unable to open file ");

$cnt = 1;

while ($aLine = <LNAMESFILE>) {
    chop $aLine;


    print " SET lname:".$cnt;
    print "  ";
    print $aLine;
    print "\n";
    print " \n";

    $cnt++;    



}
    
    
print " SET total:lnames ";
print $cnt;
print "\n";
print " \n";

    

