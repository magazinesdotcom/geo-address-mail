use Test::More;
use Test::Exception;

use Geo::Address::Mail::US;

lives_ok(sub {
    my $usaddr = Geo::Address::Mail::US->new(
        name => 'Cory Watson', postal_code => '12345'
    )
}, 'valid postal code');

dies_ok(sub {
    my $usaddr = Geo::Address::Mail::US->new(
        name => 'Cory Watson', postal_code => 'POOP'
    )
}, 'invalid postal code');

my $addr = Geo::Address::Mail::US->new(
    name => 'Cory Watson', postal_code => '12345', street2 => 'Apt 1B'
);
cmp_ok($addr->street2, 'eq', 'Apt 1B', 'street2');

done_testing;