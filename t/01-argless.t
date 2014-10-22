#!perl

use lib 't';

use FFI::Raw;
use CompileTest;

my $test   = '01-argless';
my $source = "./t/$test.c";
my $shared = "./t/$test.so";

CompileTest::compile($source, $shared);

my $argless = FFI::Raw -> new($shared, 'argless', FFI::Raw::void);

$argless -> call;
$argless -> ();

print "ok - survived the call\n";

print "1..3\n";
