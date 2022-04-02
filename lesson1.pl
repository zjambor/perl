use strict;
use warnings;
use DBI;
use LWP::Simple;

sub main {
	print "Downloading...\n";
	my $code = getstore('http://www.caveofprogramming.com/images/spring-course.jpg', 'spring-course.jpg');
	
	if($code == 200) {
		print "Success\n";
	}
	else {
		print "Failed\n";
	}
	
	print "Finished.\n";
}

main();
