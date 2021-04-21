# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name        = 'identme'
  s.version     = '0.2'
  s.licenses    = ['MIT']
  s.summary     = 'Idents your public IP address'
  s.authors     = ['anim']
  s.email       = 'me@telpart.ru'
  s.homepage    = 'https://github.com/animotto/identme-ruby'
  s.files       = ['lib/identme.rb']
  s.executables = ['identme']
  s.required_ruby_version = '>= 2.4'
end
