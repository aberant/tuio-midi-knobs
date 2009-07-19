# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{tuio-midi-knobs}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["aberant"]
  s.date = %q{2009-07-19}
  s.default_executable = %q{tuio_knobs}
  s.email = %q{qzzzq1@gmail.com}
  s.executables = ["tuio_knobs"]
  s.extra_rdoc_files = ["README.rdoc", "LICENSE"]
  s.files = ["README.rdoc", "VERSION.yml", "bin/tuio_knobs", "lib/midiator", "lib/midiator/examples", "lib/midiator/examples/chords.rb", "lib/midiator/examples/chromatic_scale.rb", "lib/midiator/examples/drum_chords.rb", "lib/midiator/examples/metronome.rb", "lib/midiator/examples/synth.rb", "lib/midiator/lib", "lib/midiator/lib/midiator", "lib/midiator/lib/midiator/driver.rb", "lib/midiator/lib/midiator/driver_registry.rb", "lib/midiator/lib/midiator/drivers", "lib/midiator/lib/midiator/drivers/alsa.rb", "lib/midiator/lib/midiator/drivers/core_midi.rb", "lib/midiator/lib/midiator/drivers/dls_synth.rb", "lib/midiator/lib/midiator/drivers/mmj.rb", "lib/midiator/lib/midiator/drivers/winmm.rb", "lib/midiator/lib/midiator/drums.rb", "lib/midiator/lib/midiator/exceptions.rb", "lib/midiator/lib/midiator/interface.rb", "lib/midiator/lib/midiator/notes.rb", "lib/midiator/lib/midiator/timer.rb", "lib/midiator/lib/midiator.rb", "lib/midiator/lib/string_extensions.rb", "lib/midiator/LICENSE", "lib/midiator/LICENSE.prp", "lib/midiator/misc", "lib/midiator/misc/rake", "lib/midiator/misc/rake/packaging.rb", "lib/midiator/misc/rake/rdoc.rb", "lib/midiator/misc/rake/testing.rb", "lib/midiator/Rakefile", "lib/midiator/README", "lib/midiator/spec", "lib/midiator/spec/driver_registry_spec.rb", "lib/midiator/spec/driver_spec.rb", "lib/midiator/spec/interface_spec.rb", "lib/midiator/spec/lib", "lib/midiator/spec/lib/spec_helper.rb", "lib/midiator/spec/string_extensions_spec.rb", "lib/tuio-ruby-0.2.0", "lib/tuio-ruby-0.2.0/lib", "lib/tuio-ruby-0.2.0/lib/core_ext", "lib/tuio-ruby-0.2.0/lib/core_ext/float.rb", "lib/tuio-ruby-0.2.0/lib/core_ext/object.rb", "lib/tuio-ruby-0.2.0/lib/my_environment.rb", "lib/tuio-ruby-0.2.0/lib/tuio_client.rb", "lib/tuio-ruby-0.2.0/lib/tuio_container.rb", "lib/tuio-ruby-0.2.0/lib/tuio_cursor.rb", "lib/tuio-ruby-0.2.0/lib/tuio_cursor_parameter.rb", "lib/tuio-ruby-0.2.0/lib/tuio_object.rb", "lib/tuio-ruby-0.2.0/lib/tuio_object_parameter.rb", "lib/tuio-ruby-0.2.0/lib/tuio_parameter.rb", "lib/tuio-ruby-0.2.0/lib/tuio_point.rb", "lib/tuio-ruby-0.2.0/LICENSE", "lib/tuio-ruby-0.2.0/README.rdoc", "lib/tuio-ruby-0.2.0/spec", "lib/tuio-ruby-0.2.0/spec/integration", "lib/tuio-ruby-0.2.0/spec/integration/tuio_event_spec.rb", "lib/tuio-ruby-0.2.0/spec/spec_helper.rb", "lib/tuio-ruby-0.2.0/spec/unit", "lib/tuio-ruby-0.2.0/spec/unit/tuio_container_spec.rb", "lib/tuio-ruby-0.2.0/spec/unit/tuio_cursor_parameter_spec.rb", "lib/tuio-ruby-0.2.0/spec/unit/tuio_cursor_spec.rb", "lib/tuio-ruby-0.2.0/spec/unit/tuio_object_parameter_spec.rb", "lib/tuio-ruby-0.2.0/spec/unit/tuio_object_spec.rb", "lib/tuio-ruby-0.2.0/spec/unit/tuio_parameter_spec.rb", "lib/tuio-ruby-0.2.0/spec/unit/tuio_point_spec.rb", "lib/tuio-ruby-0.2.0/VERSION.yml", "lib/tuio_midi_knobs", "lib/tuio_midi_knobs/knob.rb", "lib/tuio_midi_knobs/midi_interface.rb", "lib/tuio_midi_knobs/tuio_object_controller.rb", "lib/tuio_midi_knobs.rb", "spec/integration", "spec/integration/tuio_midi_knobs_spec.rb", "spec/spec_helper.rb", "spec/unit", "spec/unit/knob_spec.rb", "spec/unit/tuio_object_controller_spec.rb", "LICENSE"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/aberant/tuio-midi-knobs}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{TODO}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
