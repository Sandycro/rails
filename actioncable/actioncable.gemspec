version = File.read(File.expand_path('../../RAILS_VERSION', __FILE__)).strip

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'actioncable'
  s.version     = version
  s.summary     = 'WebSocket framework for Rails.'
  s.description = 'Structure many real-time application concerns into channels over a single WebSocket connection.'

  s.required_ruby_version = '>= 2.2.2'

  s.license = 'MIT'

  s.author   = ['Pratik Naik', 'David Heinemeier Hansson']
  s.email    = ['pratiknaik@gmail.com', 'david@heinemeierhansson.com']
  s.homepage = 'http://rubyonrails.org'

  s.files        = Dir['CHANGELOG.md', 'MIT-LICENSE', 'README.md', 'lib/**/*']
  s.require_path = 'lib'

  s.add_dependency 'actionpack', version

  s.add_dependency 'coffee-rails',     '~> 4.1.0'
  s.add_dependency 'faye-websocket',   '~> 0.10.0'
  s.add_dependency 'websocket-driver', '~> 0.6.1'
  s.add_dependency 'celluloid',        '~> 0.17.2'
  s.add_dependency 'em-hiredis',       '~> 0.3.0'
  s.add_dependency 'redis',            '~> 3.0'

  s.add_development_dependency 'puma'
  s.add_development_dependency 'mocha'
end
