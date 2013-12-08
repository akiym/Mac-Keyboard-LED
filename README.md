# NAME

Mac::Keyboard::LED - Mac keyboard LEDs switcher

# SYNOPSIS

    use Mac::Keyboard::LED;

    led_capslock(1); # turn on
    sleep 1;
    led_capslock(0); # turn off

# DESCRIPTION

Mac::Keyboard::LED switches Mac keyboard LEDs and don't change state of the input. (Only supports Mac OS X)

Original code by Amit Singh [http://googlemac.blogspot.de/2008/04/manipulating-keyboard-leds-through.html](http://googlemac.blogspot.de/2008/04/manipulating-keyboard-leds-through.html).

# FUNCTIONS

- led\_capslock($set)

    Turn on/off Caps Lock LED.

        led_capslock(1); # turn on
        led_capslock(0); # turn off

- led\_numlock($set)

    Turn on/off Num Lock LED.

        led_numlock(1); # turn on
        led_numlock(0); # turn off

# LICENSE

Copyright (C) Takumi Akiyama.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

Takumi Akiyama <t.akiym@gmail.com>
