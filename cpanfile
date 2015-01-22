requires 'parent', 0;
requires 'curry', 0;
requires 'Future', '>= 0.30';
requires 'WebService::UA', '>= 0.001';
requires 'Time::Moment', 0;
requires 'JSON::MaybeXS', 0;

on 'test' => sub {
	requires 'Test::More', '>= 0.98';
	requires 'Test::Fatal', '>= 0.010';
};

