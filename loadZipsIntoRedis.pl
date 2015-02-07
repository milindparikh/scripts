#!/usr/bin/perl
my $zipfile = "/home/milind/Downloads/us_postal_codes.csv";

open (ZIPFILE, $zipfile) || die ("Unable to open file ");
$aLine = <ZIPFILE>;

$cnt = 1;

while ($aLine = <ZIPFILE>) {
    chop $aLine;



    @dataElems = split (',', $aLine);

    if ($dataElems[0] eq '') {
    }
    else {
   


    print " SET zip:zipcode:".$cnt;
    print "  ";
    print $dataElems[0];
    print " \n";
    print " \n";
    
    print " SET zip:city:".$cnt;
    print " \"";
    print $dataElems[1];
    print "\" ";
    print " \n";
    print " \n";
    
    
    print " SET zip:state:".$cnt;
    print "  ";
    print " \"";
    print $dataElems[2];
    print "\" ";
    print " \n";
    print " \n";

    $cnt++;    

    }

}
    
    
print " SET total:zipcodes ";
print $cnt;
print "\n";
print " \n";

    

