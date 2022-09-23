# Alien::Expat ![linux](https://github.com/uperl/Alien-Expat/workflows/linux/badge.svg)

Find or install the Expat stream-oriented XML parser

# SYNOPSIS

in your Makefile.PL:

```perl
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
```

or your Build.PL:

```perl
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
```

or your dist.ini:

```perl
[@Filter]
-bundle = @Basic
-remove = MakeMaker

[Prereqs / ConfigureRequires]
Alien::Expat = 0

[MakeMaker::Awesome]
header = use Alien::Base::Wrapper qw( Alien::Expat !export );
WriteMakefile_arg = Alien::Base::Wrapper->mm_args
```

or [FFI::Platypus](https://metacpan.org/pod/FFI::Platypus):

```perl
use FFI::Platypus 1.00;
use Alien::Expat;

my $ffi = FFI::Platypus->new(
  api => 1,
  lib => [ Alien::Expat->dynamic_libs ],
);
```

or for xmlwf from your Perl script / module

```perl
use Alien::Expat;
use Env qw( @PATH );

unshift @PATH, Alien::Expat->bin_dir;
system 'xmlwf', '-v';
```

# DESCRIPTION

This module can be used as a prereq for XS or FFI modules that need expat or the
command-line tool that it comes from: xmlwf.  For more detail on how to use this
module you can see the [Alien::Build](https://metacpan.org/pod/Alien::Build) user documentation at
[Alien::Build::Manual::AlienUser](https://metacpan.org/pod/Alien::Build::Manual::AlienUser).

# SEE ALSO

- [Alien::Build::Manual::AlienUser](https://metacpan.org/pod/Alien::Build::Manual::AlienUser)

# AUTHOR

Graham Ollis <plicease@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2019-2022 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
