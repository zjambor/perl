use strict;
use warnings;

$|=1;

sub main {
    my $file = 'Tutorial5.txt';

    open(INPUT, $file) or die("Input file $file not found.\n");

    # while(my $line = <INPUT>) {
    #     if($line =~ /a/) {
    #         print $line;
    #     }
        
    # }

    my $output = 'Output.txt';
    open(OUTPUT, '>'.$output) or die("Can't create $output.\n");

    while(my $line = <INPUT>) {
        if($line =~ /a/) {
            # ha egy sorban szerepel az 'a'
            # cserélje le a line-t LINE-ra
            $line =~ s/line/LINE/ig;
            print OUTPUT $line;
        }
    }

    close(INPUT);
    close(OUTPUT);
}

main();