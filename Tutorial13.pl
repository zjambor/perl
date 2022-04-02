use strict;
use warnings;

$|=1;

sub main {

    my $input = 'test.csv';

    unless(open(INPUT, $input)) {
        die "\nCannot open $input\n";
    }

    <INPUT>;

    while(my $line = <INPUT>) {

        my @values = split ',', $line;

        print $values[0] . " | \t\t" . $values[1] . " | \t" . $values[2];
        #print join ' | ', @values;
    }

    close INPUT;
}

main();