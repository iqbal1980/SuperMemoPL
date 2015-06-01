package munkle::Controller::MunkleController;
use Moose;
use JSON;
use namespace::autoclean;
use Data::Dumper;
use List::Util qw(shuffle);

BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

munkle::Controller::MunkleController - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;
	#my @tableContent = $c->model('MunkleModel::Test')->all();

	#my $fofo = to_json(\@tableContent,{allow_blessed=>1,convert_blessed=>1});
    #$c->response->body("<pre>$fofo</pre>");
	#$c->response->body('Matched munkle::Controller::MunkleController in MunkleController.');
	
	my @tasks;
	my @randomArray;
	   foreach my $task ($c->model("MunkleModel::Test")->all) {
      push @tasks, {
        'isDone' => $task->id,
        'description' => $task->fname,
        'guid' => '/tasks/'. $task->lname,
      };
    }
	
	@randomArray = shuffle(@tasks);
	$c->stash->{asdasdas} = \@tasks;
	$c->stash->{sdfsdfsdf} = "=================";
	$c->stash->{erwerwe} = \@randomArray;
	$c->forward("View::JSON");
}


=head1 AUTHOR

A clever guy

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
