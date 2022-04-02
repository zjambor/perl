use strict;
use warnings;

use LWP::Simple;
$|=1;

sub main {
	my $file = '/home/jamborz/text.txt';
	
	open(INPUT, $file) or die("Input file $file not found.\n");
	while(my $line = <INPUT>) {
		if($line =~ /make/) {		## csak amelyik sor tartalmazza a make kifejezést
			print $line;
		}
	}
	close(INPUT);
	
	my $output = 'output.txt';
	open(OUTPUT, '>'.$output) or die("Can't create $output.\n");
	
	# fájlba írás:
	print OUTPUT "Hello\n";
	
	close(OUTPUT);
}

main();
