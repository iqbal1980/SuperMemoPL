package munkle::Controller::MainApp;
use Moose;
use namespace::autoclean;
use List::Util qw(shuffle);
use Data::Dumper;

BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

munkle::Controller::MainApp - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;
    my @questions = ("aaaa1", "aaaa2", "aaaa3", "aaaa4", "aaaa5", "aaaa6", "aaaa7", "aaaa8", "aaaa9", "aaaa10",
					"aaaa11", "aaaa12", "aaaa13", "aaaa14", "aaaa15", "aaaa16", "aaaa17", "aaaa18", "aaaa19", "aaaa20", 
					"aaaa21", "aaaa22", "aaaa23", "aaaa24", "aaaa25", "aaaa26", "aaaa27", "aaaa28", "aaaa29", "aaaa30", "aaaa31", "aaaa32",	
					 "aaaa33", "aaaa34", "aaaa35", "aaaa36", "aaaa37", "aaaa38", "aaaa39", "aaaa40", "aaaa41", "aaaa42", "aaaa43", "aaaa44",
					  "aaaa45", "aaaa46", "aaaa47", "aaaa48", "aaaa49", "aaaa50", "aaaa51", "aaaa52", "aaaa53", "aaaa54", "aaaa55", "aaaa56", "aaaa57");
					 
	my $questions_per_page = 5;
	#bug for now limit it to dividers of 5
	
	my @randomizedQuestions = shuffle(@questions);
	
	
	my @questionnaire = ();
	my $i = 0;
	my @tmp = ();
	foreach my $question (@randomizedQuestions) {
		print "============================\n";
		if($i < $questions_per_page) {
			print "i = $i\n";
			push @tmp , $question;
			$i++;
		} else {
			push @questionnaire, [@tmp];
			print ">>> i2 = $i\n";
			@tmp = ();
			$i = 0;
			
		}


	  };
	
	
	my $dumperVar = Dumper(\@questionnaire);				 
    $c->response->body("<pre>$dumperVar</pre>");
}


=head1 AUTHOR

A clever guy

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
