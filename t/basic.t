use strict;
use warnings;

use Test::More;
use WebService::Amazon::IAM::Client;

{
	my $iam = new_ok('WebService::Amazon::IAM::Client');
	is($iam->base_uri, 'http://169.254.169.254', 'have correct default base URL');
}

{
	my $srv = new_ok('WebService::Amazon::IAM::Server');
	my $hostport = '127.0.0.1:1234';
	my $uri = 'http://' . $hostport;
	my $iam = new_ok('WebService::Amazon::IAM::Client', [
		base_uri => $uri
	]);
	is($iam->base_uri, $uri, 'have correct base URL after override');
	is($iam->security_credentials, $uri, 'have correct base URL after override');

	# /latest/meta-data/iam/security-credentials/
}

done_testing;


