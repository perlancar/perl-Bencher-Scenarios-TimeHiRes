package Bencher::Scenario::TimeHiRes::usleep_accuracy;

# DATE
# VERSION

use strict;
use warnings;

our $scenario = {
    summary => 'Demonstrate inaccuracy of doing lots of small usleep',
    modules => {
    },
    participants => [
        {
            name => '1e5 x1',
            fcall_template => 'Time::HiRes::usleep(1e5)',
        },
        {
            name => '1e4 x10',
            fcall_template => 'Time::HiRes::usleep(1e4) for 1..10',
        },
        {
            name => '1e3 x100',
            fcall_template => 'Time::HiRes::usleep(1e3) for 1..100',
        },
        {
            name => '1e2 x1000',
            fcall_template => 'Time::HiRes::usleep(1e2) for 1..1000',
        },
        {
            name => '1e1 x10000',
            fcall_template => 'Time::HiRes::usleep(1e1) for 1..10000',
        },
        {
            name => '1e0 x100000',
            fcall_template => 'Time::HiRes::usleep(1e0) for 1..100_000',
        },
    ],
    precision => 6,
};

1;
# ABSTRACT:

=head1 DESCRIPTION

Basically the same as L<Bencher::Scenario::TimeHiRes::sleep_accuracy>.


=head1 SEE ALSO
