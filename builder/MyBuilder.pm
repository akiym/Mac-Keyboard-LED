package builder::MyBuilder;
use strict;
use warnings;
use parent qw(Module::Build);
use File::Copy;

# check OS and version
die 'OS unsupported' unless ($^O eq 'darwin');

sub new {
    my ($self, %args) = @_;
    $self->SUPER::new(
        %args,
        extra_compiler_flags => ['-Wall'],
        extra_linker_flags   => ['-framework', 'IOKit', '-framework', 'CoreFoundation'],
    );
}

sub compile_c {
    my ($self, $file, %args) = @_;

    (my $m_file = $file) =~ s/\.c$/.m/;
    move($file, $m_file) or die $!;

    $self->SUPER::compile_c($m_file, %args);
}

1;
