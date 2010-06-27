require 'rubygems'
require 'rake'

require 'rake/packagetask'
require 'rake/gempackagetask'

### Task: gem
gemspec = Gem::Specification.new do |gem|
  gem.name      = "tuio-midi-knobs"
  gem.version   = File.read('VERSION')

  gem.summary = %Q{converts TUIO data to MIDI CC messages}
  gem.description = %Q{converts TUIO data to MIDI CC messages using a simple knob metaphor}

  gem.authors  = ["aberant"]
  gem.email    = "qzzzq1@gmail.com"
  gem.homepage = "http://github.com/aberant/tuio-midi-knobs"

  gem.rubyforge_project = 'tuio-midi-knobs'

  gem.has_rdoc = true
  gem.extra_rdoc_files = ["README.rdoc", "LICENSE"]
  gem.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  gem.files        = FileList['Rakefile', 'README.rdoc', 'VERSION', 'examples/**/*', 'lib/**/*'].to_a
  gem.test_files   = FileList['spec/**/*.rb']

  gem.default_executable = %q{tuio_knobs}

  gem.add_dependency 'midiator', [">= 0.3.2"]
  gem.add_dependency 'tuio-ruby', [">= 0.2.5"]
end

Rake::GemPackageTask.new( gemspec ) do |task|
  task.gem_spec = gemspec
  task.need_tar = false
  task.need_tar_gz = true
  task.need_tar_bz2 = true
  task.need_zip = true
end

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = 'tuio-midi-knobs'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :default => :spec
