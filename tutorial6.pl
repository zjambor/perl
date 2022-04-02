use strict;
use warnings;

$|=1;

sub main {
    my $file = 'Tutorial5.txt';
    open(INPUT, $file) or die("Input file $file not found.\n");

    my $output = 'Output2.txt';
    open(OUTPUT, '>'.$output) or die("Can't create $output.\n");

    while(my $line = <INPUT>) {
        if($line =~ /e.a/) {          # a . joker karakter
            # ha egy sorban szerepel az 'a'
            # cserélje le a line-t LINE-ra

            $line =~ s/line/LINE/ig;
            print $line;
        }
    }

    close(INPUT);
    close(OUTPUT);
}

main();