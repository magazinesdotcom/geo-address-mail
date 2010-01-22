use Test::More;
use Test::Exception;

use Geo::Address::Mail::US;

lives_ok(sub {
    my $usaddr = Geo::Address::Mail::US->new(
        name => 'Cory Watson', postal_code => '12345'
    )
});

dies_ok(sub {
    my $usaddr = Geo::Address::Mail::US->new(
        name => 'Cory Watson', postal_code => 'POOP'
    )
});

done_testing;