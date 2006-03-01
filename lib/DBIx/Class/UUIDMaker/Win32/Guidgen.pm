package DBIx::Class::UUIDMaker::Win32::Guidgen;
use base qw/DBIx::Class::UUIDMaker/;
use Win32::Guidgen ();

sub as_string {
    my $uuid = Win32::Guidgen::create();
    $uuid =~ s/(^\{|\}$)//g;

    return $uuid;
};

1;
__END__

=head1 NAME

DBIx::Class::UUIDMaker::Win32:::Guidgen - Create uuids using Win32::Guidgen

=head1 SYNOPSIS

  package Artist;
  __PACKAGE__->load_components(qw/UUIDColumns Core DB/);
  __PACKAGE__->uuid_columns( 'artist_id' );
  __PACKAGE__->uuid_class('::Win32::Guidgen');

=head1 DESCRIPTION

This DBIx::Class::UUIDMaker subclass uses Win32::Guidgen to generate uuid
strings in the following format:

  098f2470-bae0-11cd-b579-08002b30bfeb

=head1 METHODS

=head2 as_string

Returns the new uuid as a string.

=head1 SEE ALSO

L<Win32::Guidgen>

=head1 AUTHOR

Chris Laco <claco@chrislaco.com>

=head1 LICENSE

You may distribute this code under the same terms as Perl itself.
