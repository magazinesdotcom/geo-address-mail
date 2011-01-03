package Geo::Address::Mail;
use warnings;
use strict;
use Moose;
use MooseX::Storage;
with qw(MooseX::Storage::Deferred);
with qw(MooseX::Clone);

our $VERSION = '0.03';

has 'city' => (
    is => 'rw',
    isa => 'Str'
);

has 'company' => (
    is => 'rw',
    isa => 'Str'
);

has 'country' => (
    is => 'rw',
    isa => 'Str'
);

has 'name' => (
    is => 'rw',
    isa => 'Str'
);

has 'postal_code' => (
    is => 'rw',
    isa => 'Str',
);

has 'street' => (
    is => 'rw',
    isa => 'Str'
);

__PACKAGE__->meta->make_immutable;
no Moose;
1;

=head1 NAME

Geo::Address::Mail - A Mailing Address on Earth

=head1 SYNOPSIS

Geo::Address::Mail provides a generic object representation of a mailing
address that may be subclassed to provide more specific typing of attributes.
The core class, Geo::Address::Mail provides common, loosely typed attributes
and methods.

    use Geo::Address::Mail::US;

    my $add = Geo::Address::Mail::US->new(
        name => 'Cory G Watson',
        street => '123 Main St',
        city => 'Testville',
        postal_code => '12345'
    );

=head1 SUBCLASSING

The real reason for Geo::Address::Mail is to provide a common class that can
be used to build mailing address objects for other countries.

Subclasses are expected additional type refinement and attributes.
For example, L<Geo::Address::Mail::US> uses a more specific type for
validation USPS ZIP codes and adds a C<street2> attribute for an optional
additional line of addressing.

=head1 ADDITIONAL USES

Using a common address object enables a family of distributions that provide
interesting address functionality such as L<Geo::Address::Mail::Standardizer>.

=head1 ATTRIBUTES

=head2 city

The city/town/village/municipality in which this address resides.

=head2 company

The name of the company that is to receive the mail piece.

=head2 country

The country in which this address resides.  This is likely not necessary
unless the address is in a different country.

=head2 name

The name of the person that is to receive the mail piece.

=head2 postal_code

The postal code of the address.  Called the ZIP code in the US.

=head2 street

The number and name of the street that is to receive the mail piece.

  2020 Main St

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
