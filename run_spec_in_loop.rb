require 'rspec'

spec_file = 'spec/sample_spec.rb'

1.upto(5) do |i| 
  puts "Running spec from within ruby runtime"
  ::RSpec::Core::Runner.run([spec_file], STDERR, STDOUT)
  puts "loading spec file via 'load' as if it was changed and we wanted changes to be picked up"
  load spec_file
end