#!perl -T

use Test::More;

use FFI::Raw;

my $libm = 'libm.so';

my $fmax = FFI::Raw -> new(
	$libm, 'fmax',
	FFI::Raw::double,
	FFI::Raw::double, FFI::Raw::double
);

is($fmax -> call(2.0, 3.0), 3);
is($fmax -> call(2.5, 3.8), 3.8);

done_testing;
