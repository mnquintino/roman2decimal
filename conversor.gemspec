
Gem::Specification.new do |s|
  s.name         = "manara_conversor"
  s.version      = "1.0.0"
  s.author       = "Manara N Quintino"
  s.email        = "mnquintino@gmail.com"
  s.homepage     = "https://github.com/mnquintino"
  s.summary      = "Converte algorismos romanos em decimais e vice-versa."
  s.description  = File.read(File.join(File.dirname(__FILE__), 'README'))
  s.licenses     = ['MIT']

  s.files         = Dir["{bin,lib,spec}/**/*"] + %w(LICENSE README)
  s.test_files    = Dir["spec/**/*"]
  s.executables   = [ 'begin' ]

  s.required_ruby_version = '>=2.7'
  s.add_development_dependency 'rspec', '~> 3.11', '>= 3.11.0'
end
