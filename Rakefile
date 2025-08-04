# Rakefile

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << "test"
  t.pattern = "test/**/*_test.rb"  # Ejecuta todos los archivos *_test.rb en subdirectorios de test/
  t.verbose = true                 # Muestra información detallada
end

task default: :test
