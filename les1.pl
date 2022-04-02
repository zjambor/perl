use strict;
use warnings;

use LWP::Simple;

sub main {
	print "Downloading...\n";
	#print get("http://caveofprogramming.com/");
	getstore("http://caveofprogramming.com/", "home.html");
	my $code = getstore('http://caveofprogramming.com/logo.png', "logo.png");
	
	if($code == 200) {
		print "Succes\n";
	}
	else {
		print "Failed\n";
	}
	
	my @files = (
		'logo.png', 
		'index.html'
		);
		
	foreach my $file(@files) {
		print "$file\n";
	}
	
	my $file = 'C:\logo.png';
	
	if(-f $file) {
		print "Found file\n";
	}
	else {
		print "File not found\n";
	}
	
	foreach my $file(@files) {
		if(-f $file) {
			print "Found file: $file\n";
		}
		else {
			print "File not found: $file\n";
		}
	}
	
	print "Finished\n";
}

main();
