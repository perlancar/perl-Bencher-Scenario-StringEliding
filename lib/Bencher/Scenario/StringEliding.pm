package Bencher::Scenario::StringEliding;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark string eliding',
    participants => [
        {fcall_template => 'String::Elide::Parts::elide(<str>, <len>)'},
        {fcall_template => 'String::Elide::Tiny::elide(<str>, <len>)'},
        {fcall_template => 'String::Truncate::elide(<str>, <len>)'},
        {fcall_template => 'Text::Elide::elide(<str>, <len>)'},
        {fcall_template => 'Text::Truncate::truncstr(<str>, <len>)'},
    ],
    datasets => [
        {name=>'strlen=80,len=60', args=>{str=>'a'x80, len=>60}},
    ],
};

1;
# ABSTRACT:

=head1 DESCRIPTION
