use strict;
use warnings;
use Convert::Morse qw/as_morse/;
use Mac::Keyboard::LED;
use Time::HiRes qw/sleep/;

my $message = shift;
die "Usage: $0 message\n" unless defined $message;

for my $c (split //, as_morse($message)) {
    if ($c eq '.') {
        led_capslock(1);
        sleep 0.25;
    } elsif ($c eq '-') {
        led_capslock(1);
        sleep 0.5;
    }
    led_capslock(0);
    sleep 0.25;
}
