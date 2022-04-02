## hash tables
use strict;
use warnings;

$|=1;

sub main {

    my %months = (
        "Jan" => 1,
        "Dec" => 12,
        "Mar" => 3,
        "Jun" => 6,
    );
    
    print $months{"Jan"} . "\n";    # -> 1

    my %days = (
        1 => "Monday",
        2 => "Tuesday",
        3 => "Wednesday",
        4 => "Thursday",
    );

    print $days{1} . "\n";

    my @months = keys %months;      # hash keys to an array

    foreach my $month(@months) {        # iterate array
        my $value = $months{$month};    # find key pair in hash with the keys

        print "$month: $value\n";
    }

    # declare multiple variables
    while(my ($key,$value) = each %days) {
        print "$key: $value\n";
    }
}

main();