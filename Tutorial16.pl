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

    my @lines;
    my $count = 0;

    push @lines, "hello";

    while(my $line = <INPUT>) {

        chomp $line;

        my @values = split /\s*,\s*/, $line;

        push @lines, $line;
    }

    close INPUT;

    foreach my $line(@lines) {
        print $line . "\n";
    }
}

main();