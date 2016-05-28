

Gem::Specification.new do |s|
  s.name = 'ghtoc'
  s.version = '0.0.0'
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 1.9.3'
  s.authors = ['Mikhail Yurasov']
  s.description = <<-EOF
    Adds table of contents to Markdown files for Github.
  EOF

  s.email = 'me@yurasov.me'
  s.files = ['lib/Formatter.rb', 'Gemfile']
  s.executables = ['ghtoc']
  s.extra_rdoc_files = []
  s.homepage = 'http://github.com/myurasov/ghtoc'
  s.licenses = ['MIT']
  s.summary = 'Adds table of contents to Markdown files for Github.'

  s.add_runtime_dependency('minitest')
  s.add_runtime_dependency('github-markup')
  s.add_runtime_dependency('redcarpet')
  s.add_runtime_dependency('html-pipeline')

  s.add_development_dependency('bundler', '~> 1.3')
end
