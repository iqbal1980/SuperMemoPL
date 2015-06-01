use strict;
use warnings;
use Test::More;


use Catalyst::Test 'munkle';
use munkle::Controller::MainApp;

ok( request('/mainapp')->is_success, 'Request should succeed' );
done_testing();
