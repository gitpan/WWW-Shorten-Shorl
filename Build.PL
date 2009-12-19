use Module::Build;

my $build = Module::Build->new(
			       module_name => 'WWW::Shorten::Shorl',
			       license     => 'perl',
			       requires    => {
                                 'perl'                => '5.6.0',
                                 'WWW::Shorten'        => 0,
                                 'LWP::UserAgent'      => 0,
                               },
			       build_requires => {
                                 'Test::More'          => '0.47',
                               },
                               build_recommends => {
                                 'Test::Pod'           => 0,
                                 'Test::Pod::Coverage' => 0,
                               },               
			       create_makefile_pl => 'traditional',
);

$build->create_build_script;
