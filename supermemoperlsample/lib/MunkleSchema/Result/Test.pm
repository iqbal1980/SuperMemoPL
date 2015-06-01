use utf8;
package MunkleSchema::Result::Test;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

MunkleSchema::Result::Test

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<test>

=cut

__PACKAGE__->table("test");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 fname

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 lname

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 extra

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "fname",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "lname",
  { data_type => "varchar", is_nullable => 0, size => 50 },
  "extra",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07033 @ 2012-11-01 21:39:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Oo+RW+6pBoav5SA/j/8lPQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
