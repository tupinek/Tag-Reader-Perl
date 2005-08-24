# $Id: 11_attlist.t,v 1.4 2005-08-24 15:30:58 skim Exp $

# Test directory.
my $test_dir = "$ENV{'PWD'}/t/TagReaderPerl";

print "Testing: Attlist test.\n" if $debug;
my $obj = $class->new;
$obj->set_file($test_dir.'/data/attlist1.tags');
my @tag = $obj->gettoken;
ok($tag[0], "<!ATTLIST termdef\n          id      ID      #REQUIRED\n".
	"          name    CDATA   #IMPLIED>");
ok($tag[1], '!attlist');
ok($tag[2], 1);
ok($tag[3], 1);

$obj = $class->new;
$obj->set_file($test_dir.'/data/attlist2.tags');
@tag = $obj->gettoken;
ok($tag[0], "<!ATTLIST list\n          type    (bullets|ordered|glossary)  ".
	"\"ordered\">");
ok($tag[1], '!attlist');
ok($tag[2], 1);
ok($tag[3], 1);

$obj = $class->new;
$obj->set_file($test_dir.'/data/attlist3.tags');
@tag = $obj->gettoken;
ok($tag[0], "<!ATTLIST form\n          method  CDATA   #FIXED \"POST\">");
ok($tag[1], '!attlist');
ok($tag[2], 1);
ok($tag[3], 1);

$obj = $class->new;
$obj->set_file($test_dir.'/data/attlist4.tags');
@tag = $obj->gettoken;
ok($tag[0], "<!ATTLIST poem xml:space (default|preserve) 'preserve'>");
ok($tag[1], '!attlist');
ok($tag[2], 1);
ok($tag[3], 1);

$obj = $class->new;
$obj->set_file($test_dir.'/data/attlist5.tags');
@tag = $obj->gettoken;
ok($tag[0], "<!ATTLIST pre xml:space (preserve) #FIXED 'preserve'>");
ok($tag[1], '!attlist');
ok($tag[2], 1);
ok($tag[3], 1);

$obj = $class->new;
$obj->set_file($test_dir.'/data/attlist6.tags');
@tag = $obj->gettoken;
ok($tag[0], "<!ATTLIST DATE FORMAT NOTATION (USDATE|AUSDATE|ISODATE) \"ISODATE\">");
ok($tag[1], '!attlist');
ok($tag[2], 1);
ok($tag[3], 1);