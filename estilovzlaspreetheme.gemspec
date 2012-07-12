Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'estilovzlaspreetheme'
  s.version     = '0.1.6'
  s.summary     = 'A Spree Commerce Theme'

  s.author        = 'Paal de Vibe'
  s.email         = 'paal@kanobo.com'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.has_rdoc = false
end
