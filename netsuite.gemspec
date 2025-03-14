# -*- encoding: utf-8 -*-
require File.expand_path('../lib/netsuite/version', __FILE__)

Gem::Specification.new do |gem|
  gem.licenses      = ['MIT']
  gem.authors       = ['Ryan Moran', 'Michael Bianco']
  gem.email         = ['ryan.moran@gmail.com', 'mike@mikebian.co']
  gem.description   = %q{NetSuite SuiteTalk API Wrapper}
  gem.summary       = %q{NetSuite SuiteTalk API (SOAP) Wrapper}
  gem.homepage      = 'https://github.com/NetSweet/netsuite'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = 'netsuite'
  gem.require_paths = ['lib']
  gem.version       = NetSuite::VERSION
  gem.metadata['changelog_uri'] = 'https://github.com/netsweet/netsuite/blob/master/HISTORY.md'

  #gem.add_dependency 'savon', '>= 2.3.0'
  gem.add_dependency 'savon', '2.12.1'

  gem.add_development_dependency 'rspec', '~> 3.10.0'
  gem.add_development_dependency 'rake'
end
