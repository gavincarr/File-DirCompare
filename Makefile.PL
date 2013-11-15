use 5.005;
use ExtUtils::MakeMaker;
WriteMakefile(
    'NAME'		=> 'File::DirCompare',
    'VERSION_FROM'	=> 'DirCompare.pm',
    'PREREQ_PM'		=> {
       'File::Spec'     => 0,
       'File::Basename' => 0,
       'File::Compare'  => 0,
       'File::Glob'     => 0,
       'Carp'           => 0,
    },
    META_MERGE => {
        'meta-spec' => { version => 2 },
        resources => {
            repository => {
                type => 'git',
                url  => 'https://github.com/gavincarr/File-DirCompare.git',
                web  => 'https://github.com/gavincarr/File-DirCompare',
            },
        },
    },
    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      (AUTHOR     => 'Gavin Carr <gavin@openfusion.com.au>') : ()),
);
