use strict;
use warnings;

$|=1;

sub main {
    my $file = 'Text.txt';
    open(INPUT, $file) or die("Input file $file not found.\n");

    while(my $line = <INPUT>) {
        if($line =~ /(or*.)(...)/) {     # zero or more r     

            print "First match: $1, second match: $2\n";
            # E - ith
            # R - ead
        }
    }

    close(INPUT);
}

main();