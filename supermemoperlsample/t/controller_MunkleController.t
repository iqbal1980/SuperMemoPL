use strict;
use warnings;
use Test::More;


use Catalyst::Test 'munkle';
use munkle::Controller::MunkleController;

ok( request('/munklecontroller')->is_success, 'Request should succeed' );
done_testing();
