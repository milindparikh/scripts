#!/usr/bin/perl
my $ipfile = "/home/milind/Downloads/strIpToCountry.csv";


open (IPFILE, $ipfile) || die ("Unable to open file ");

$cnt = 1;

while ($aLine = <IPFILE>) {
    chop $aLine;



    @dataElems = split (',', $aLine);

    if ($dataElems[0] eq '') {
    }
    else {
   


    print " SET iprange:startip:".$cnt;
    print "  ";
    print $dataElems[0];
    print " \n";
    print " \n";


    print " SET iprange:endip:".$cnt;
    print "  ";
    print $dataElems[1];
    print " \n";
    print " \n";

    $cnt++;    

    }

}
    
    
print " SET total:ipranges ";
print $cnt;
print "\n";
print " \n";

    

