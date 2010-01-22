package Geo::Address::Mail::US;
use warnings;
use strict;
use Moose;

use Moose::Util::TypeConstraints;
use Regexp::Common qw(zip);

extends 'Geo::Address::Mail';

subtype 'Geo::Address::Mail::USPostalCode',
    => as 'Str',
    => where { $_ =~ /^$RE{zip}{US}$/ };


has '+postal_code' => (
    isa => 'Geo::Address::Mail::USPostalCode'
);

__PACKAGE__->meta->make_immutable;
no Moose;
1;

=head1 NAME

Geo::Address::Mail::US - A Mailing Address in the United States

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
