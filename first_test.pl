use strict;
use warnings;

sub main {
    print "Please type your name:\n";
    my $name = "John";
    # <STDIN>;
    print "Hello $name\n";

    my @emails = (
        'john@caveofprogramming.com',
        'hello',
        '@fefgggf.com',
        'jklj778dd@somewhere.com',
        'lkjl@7788.',
    );

    for my $email(@emails) {
        if ($email =~ /\w+@\w+\.\w+/) {
            print "Valid: $email\n";
        } 
        else {
            print "Invalid: $email\n";
        }
    }

    my $text = "The code for this device is GP8765.";

    if($text =~ /(\w\w\d{4})/) {
        print "Matched: $1\n";
    }

    if($text =~ /\s(\w+)\./) {
        print "Matched: $1\n";
    }

    if($text =~ /\sis\s(.+?)\./) {
        print "Matched: $1\n";
    }

    if($text =~ /is\s(\S+?)\./) {
        print "Matched: $1\n";
    }

    if($text =~ /(\w{1,2}\d{2,6})/) {
        print "Matched: $1\n";
    }
}

main();