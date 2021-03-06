# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "twitter_to_csv/version"

Gem::Specification.new do |s|
  s.name        = "twitter_to_csv"
  s.version     = TwitterToCsv::VERSION
  s.authors     = ["Andrew Cantino"]
  s.email       = ["andrew@iterationlabs.com"]
  s.homepage    = "https://github.com/cantino/twitter_to_csv"
  s.summary     = %q{Dump the Twitter streaming API to a CSV or JSON file and then filter, handle retweets, apply sentiment analysis, and more.}
  s.description = %q{}

  s.rubyforge_project = "twitter_to_csv"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec"
  s.add_runtime_dependency 'twitter-stream', '>=0.1.16'
  s.add_runtime_dependency 'elif'
  s.add_runtime_dependency 'em-http-request'
  s.add_runtime_dependency 'unsupervised-language-detection'
end
