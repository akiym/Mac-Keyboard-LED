package Mac::Keyboard::LED;
use 5.008005;
use strict;
use warnings;
use parent qw/Exporter/;

our $VERSION = "0.01";

our @EXPORT = qw/led_capslock led_numlock/;

use XSLoader;
XSLoader::load(__PACKAGE__, $VERSION);

1;
__END__

=encoding utf-8

=head1 NAME

Mac::Keyboard::LED - Mac keyboard LEDs switcher

=head1 SYNOPSIS

    use Mac::Keyboard::LED;

    led_capslock(1); # turn on
    sleep 1;
    led_capslock(0); # turn off

=head1 DESCRIPTION

Mac::Keyboard::LED swiches Mac keyboard LEDs and don't change state of the input. (Only supports Mac OS X)

Original code by Amit Singh L<http://googlemac.blogspot.de/2008/04/manipulating-keyboard-leds-through.html>.

=head1 FUNCTIONS

=over 4

=item led_capslock($set)

Turn on/off Caps Lock LED.

  led_capslock(1); # turn on
  led_capslock(1); # turn off

=item led_numlock($set)

Turn on/off Num Lock LED.

  led_numlock(1); # turn on
  led_numlock(1); # turn off

=back

=head1 LICENSE

Copyright (C) Takumi Akiyama.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

Takumi Akiyama E<lt>t.akiym@gmail.comE<gt>

=cut

