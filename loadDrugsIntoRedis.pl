#!/usr/bin/perl
my $drugsfile = "./Drugs_Short.csv";

open (DRUGSFILE, $drugsfile) || die ("Unable to open file ");


$cnt = 0;

while ($aLine = <DRUGSFILE>) {
    chop $aLine;



    @dataElems = split (',', $aLine);

    if ($dataElems[0] eq '') {
    }
    else {
	@dosage = split (/\|/, $dataElems[1]);

	$noD = length(@dosage);
	
	
	for ($cntn = 0; $cntn <= $noD; $cntn++) {

#	    print "$noD $cntn\n";


	    if ($dosage[$cntn]) {

		$dosage[$cntn] =~ s/^\s//;
		$dosage[$cntn] =~ s/\s$//;
		
		print " HSET DRUG:".$cnt;
		print "  \'id\' ";
		print $cnt;
		print " \n";
		print " \n";

		print " HSET DRUG:".$cnt;
		print "  \'name\' \'";
		print $dataElems[0];
		print "\' \n";
		print " \n";
		
		print " HSET DRUG:".$cnt;
		print "  \'dose\' \'";
		print $dosage[$cntn];
		print "\' \n";
		print " \n";

		print " HSET DRUG:".$cnt;
		print "  \'manufacturer\' \'";
		print $dataElems[2];
		print "\' \n";
		print " \n";
		

		$cnt++;
		
	    }
	}
	
	
    }

}
    
    
print " SET total:DRUGS ";
print $cnt;
print " \n";
print " \n";

    

