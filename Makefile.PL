#-*-perl-*-

warn "

LinkTree is extremely sensitive to the implemention of File::Recurse.
You may have to patch your copy if the tests fail.  See the Recurse
directory in this distribution for details.

";

use ExtUtils::MakeMaker;
WriteMakefile(NAME => 'File::LinkTree',
	      PREREQ_PM => { File::Recurse => 0 }, # needs newest version XXX
	      EXE_FILES => ['linktree'],
	      VERSION_FROM => 'LinkTree.pm',
              'dist' => {COMPRESS=>'gzip -9f', SUFFIX => 'gz'},
	      );
