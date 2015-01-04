Gem::Specification.new do |s| 
  s.name         = "budgeter"
  s.version      = "1.0.0"
  s.author       = "Kyle Kern"
  s.email        = "kyle.w.kern@gmail.com"
  s.licenses     = ['MIT']
  s.summary      = "A simple cli budgeting app"
  s.description  = File.read(File.join(File.dirname(__FILE__), 'README'))
  
  s.files         = Dir["{bin,lib,spec}/**/*"] + %w(LICENSE README)
  s.test_files    = Dir["spec/**/*"]
  s.executables   = [ 'budgeter' ]
  
  s.required_ruby_version = '>=1.9'
  s.add_development_dependency 'rspec >=2.0'
end