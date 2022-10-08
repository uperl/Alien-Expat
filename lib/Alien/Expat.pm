package Alien::Expat;

use strict;
use warnings;
use 5.008001;
use base qw( Alien::Base );

# ABSTRACT: Find or install the Expat stream-oriented XML parser
# VERSION

=head1 SYNOPSIS

in your Makefile.PL:

 use ExtUtils::MakeMaker;
 use Alien::Base::Wrapper qw( Alien::Expat !export );
 
 WriteMakefile(
   ...
   CONFIGURE_REQUIRES => {
     'Alien::Base::Wrapper' => 0,
     'Alien::Expat'         => 0,
   },
   Alien::Base::Wrapper->mm_args,
   ...
 );

or your Build.PL:

 use Module::Build;
 use Alien::Base::Wrapper qw( Alien::Expat !export );
 
 my $build = Module::Build->new(
   ...
   configure_requires => {
     'Alien::Base::Wrapper' => 0,
     'Alien::Expat'         => 0,
   },
   Alien::Base::Wrapper->mb_args,
   ...
 );
 
 $build->create_build_script;

or your dist.ini:

 [@Filter]
 -bundle = @Basic
 -remove = MakeMaker
 
 [Prereqs / ConfigureRequires]
 Alien::Expat = 0
 
 [MakeMaker::Awesome]
 header = use Alien::Base::Wrapper qw( Alien::Expat !export );
 WriteMakefile_arg = Alien::Base::Wrapper->mm_args

or L<FFI::Platypus>:

 use FFI::Platypus 1.00;
 use Alien::Expat;
 
 my $ffi = FFI::Platypus->new(
   api => 1,
   lib => [ Alien::Expat->dynamic_libs ],
 );

=head1 DESCRIPTION

This module can be used as a prereq for XS or FFI modules that need expat.
For more detail on how to use this module you can see the L<Alien::Build>
user documentation at L<Alien::Build::Manual::AlienUser>.

=head1 SEE ALSO

=over 4

=item L<Alien::Build::Manual::AlienUser>

=back

=cut

1;
