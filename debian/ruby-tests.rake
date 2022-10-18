require 'gem2deb/rake/spectask'

exclude = [
  './spec/lib/listen/adapter/darwin_spec.rb',
  './spec/lib/listen/adapter/windows_spec.rb',
  './spec/lib/listen/monotonic_time_spec.rb',
  './spec/acceptance/listen_spec.rb',
]

Gem2Deb::Rake::RSpecTask.new do |spec|
  spec.pattern = './spec/**/*_spec.rb'
  spec.exclude_pattern = exclude.join(',')
end
