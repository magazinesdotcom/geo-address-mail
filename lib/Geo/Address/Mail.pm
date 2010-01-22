package Geo::Address::Mail;
use warnings;
use strict;
use Moose;

our $VERSION = '0.01';

has 'name' => (
    is => 'rw',
    isa => 'Str'
);

has 'postal_code' => (
    is => 'rw',
    isa => 'Str'
);

__PACKAGE__->meta->make_immutable;
no Moose;
1;

=head1 NAME

Geo::Address::Mail - A Mailing Address on Earth

=head1 SYNOPSIS

Quick summary of what the module does.

Perhaps a little code snippet.

    use Geo::Address::Mail;

    my $foo = Geo::Address::Mail->new();
    ...

=head1 AUTHOR

Cory G Watson, C<< <gphat at cpan.org> >>

=head1 ACKNOWLEDGEMENTS


=head1 COPYRIGHT & LICENSE

Copyright 2010 Cory G Watson.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.

=cut

1; # End of Geo::Address::Mail
