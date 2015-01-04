Gem::Specification.new do |s| 
  s.name         = "budgeter"
  s.version      = "1.0.1"
  s.author       = "Kyle Kern"
  s.email        = "kyle.w.kern@gmail.com"
  s.license      = 'MIT'
  s.summary      = "A simple cli budgeting app"
  s.description  = File.read(File.join(File.dirname(__FILE__), 'README'))
  s.platform     = Gem::Platform::RUBY
  
  s.files         = Dir["{bin,lib,spec}/**/*"] + %w(LICENSE README)
  s.require_paths = Dir["{bin,lib,spec}"]
  s.test_files    = Dir["spec/**/*"]
  s.executables   = [ 'budgeter' ]
  s.homepage    = 'https://rubygems.org/gems/budgeter'
  
  s.required_ruby_version = '>=1.9'
end