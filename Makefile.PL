use inc::Module::Install;

name 'DBIx-ThinSQL';
version '0.0.1_2';
license 'gpl3';

homepage 'https://github.com/mlawren/p5-DBIx-ThinSQL';
bugtracker 'https://github.com/mlawren/p5-DBIx-ThinSQL/issues';
repository 'git://github.com/mlawren/p5-DBIx-ThinSQL.git';

all_from 'lib/DBIx/ThinSQL.pm';
readme_from 'lib/DBIx/ThinSQL.pod';

requires 'DBI'            => 0;
requires 'Exporter::Tidy' => 0;
requires 'File::ShareDir' => 0;
requires 'Log::Any'       => 0;
requires 'Path::Tiny'     => 0;

test_requires 'File::chdir'    => 0;
test_requires 'Test::Database' => 0;
test_requires 'Test::Fatal'    => 0;
test_requires 'Test::More'     => 0;

tests_recursive 't';
author_tests 'xt';

install_share 'share';

auto_install;

WriteAll;