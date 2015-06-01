use strict;
use warnings;

use munkle;

my $app = munkle->apply_default_middlewares(munkle->psgi_app);
$app;

