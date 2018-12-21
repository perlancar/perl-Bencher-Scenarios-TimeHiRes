package Bencher::Scenario::TimeHiRes::time;

# DATE
# VERSION

use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark getting current time',
    modules => {
    },
    participants => [
        {
            fcall_template => 'Time::HiRes::time',
        },
        {
            name => 'CORE::time',
            code_template => 'time()',
        },
        {
            fcall_template => 'Time::HiRes::tv_interval',
        },
    ],
};

1;
# ABSTRACT:

=head1 BENCHMARK NOTES

Use floating-point time(), because tv_interval() is about 1 order of magnitude
slower!

Ref: David Golden's TPC 2017 talk "Real World Optimization"
L<https://www.youtube.com/watch?v=_PJIVVGAZqA>
