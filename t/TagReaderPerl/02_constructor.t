print "Testing: new('') bad constructor.\n" if $debug;
my $obj;
eval {
	$obj = $class->new('');
};
ok($@, "$class: Unknown parameter ''.\n");

print "Testing: new('something' => 'value') bad constructor.\n" if $debug;
eval {
	$obj = $class->new('something' => 'value');
};
ok($@, "$class: Unknown parameter 'something'.\n");

print "Testing: new() right plain constructor.\n" if $debug;
$obj = $class->new;
ok(defined $obj, 1);
ok($obj->isa($class), 1);
ok($obj, qr/$class/);
