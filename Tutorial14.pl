use strict;
use warnings;

use Data::Dumper;

$|=1;

sub main {

    my $input = 'test.csv';

    unless(open(INPUT, $input)) {
        die "\nCannot open $input\n";
    }

    <INPUT>;

    while(my $line = <INPUT>) {

        chomp $line;
        # print "'$line'\n";

        my @values = split /\s*,\s*/, $line;

        # my @values = split /,/, $line;
        # my @values = split ',', $line;

        #print join " | \t", @values;
        #print "\n";
        print Dumper(@values);
    }

    close INPUT;

}

main();