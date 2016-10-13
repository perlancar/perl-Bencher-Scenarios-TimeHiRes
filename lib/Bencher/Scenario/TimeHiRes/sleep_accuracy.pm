package Bencher::Scenario::TimeHiRes::sleep_accuracy;

# DATE
# VERSION

use strict;
use warnings;

our $scenario = {
    summary => 'Demonstrate inaccuracy of doing lots of small sleep',
    modules => {
    },
    participants => [
        {
            name => '1e-1 x1',
            fcall_template => 'Time::HiRes::sleep(1e-1)',
        },
        {
            name => '1e-2 x10',
            fcall_template => 'Time::HiRes::sleep(1e-2) for 1..10',
        },
        {
            name => '1e-3 x100',
            fcall_template => 'Time::HiRes::sleep(1e-3) for 1..100',
        },
        {
            name => '1e-4 x1000',
            fcall_template => 'Time::HiRes::sleep(1e-4) for 1..1000',
        },
        {
            name => '1e-5 x10000',
            fcall_template => 'Time::HiRes::sleep(1e-5) for 1..10000',
        },
        {
            name => '1e-6 x100000',
            fcall_template => 'Time::HiRes::sleep(1e-6) for 1..100_000',
        },
    ],
    precision => 6,
};

1;
# ABSTRACT:

=head1 SEE ALSO
