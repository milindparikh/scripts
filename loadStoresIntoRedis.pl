#!/usr/bin/perl
my $storesfile = "./stores.csv";

open (STORESFILE, $storesfile) || die ("Unable to open file ");
$aLine = <STORESFILE>;

$cnt = 0;

while ($aLine = <STORESFILE>) {
    chop $aLine;



    @dataElems = split (',', $aLine);

    if ($dataElems[0] eq '') {
    }
    else {
   
    print " HSET STORE:".$cnt;
    print "  \'id\' ";
    print $dataElems[0];
    print " \n";
    print " \n";

    
    print " HSET STORE:".$cnt;
    print "  \'straddr\' \"";
    print $dataElems[1];
    print "\" ";
    print " \n";
    print " \n";

        
    print " HSET STORE:".$cnt;
    print " \'city\'  \"";
    print $dataElems[2];
    print "\" ";
    print " \n";
    print " \n";
    
    
    print " HSET STORE:".$cnt;
    print "  ";
    print " \'state\' \"";
    print $dataElems[3];
    print "\" ";
    print " \n";
    print " \n";


    print " HSET STORE:".$cnt;
    print " \'zipcode\' ";
    print $dataElems[4];
    print " \n";
    print " \n";


    print " HSET STORE:".$cnt;
    print " \'phone\' \"";
    print $dataElems[5];
    print "\" \n";
    print " \n";

    print " HSET STORE:".$cnt;
    print " \'start\' \"";
    print $dataElems[6];
    print "\" \n";
    print " \n";

    print " HSET STORE:".$cnt;
    print "  \'end\' \"";
    print $dataElems[7];
    print "\" \n";
    print " \n";

    
    $cnt++;    

    }

}
    
    
print " SET total:STORES ";
print $cnt;
print " \n";
print " \n";

    

