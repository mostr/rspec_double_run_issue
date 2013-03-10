RSpec runs specs twice (possible issue)
==

When RSpec is run from within ruby via `RSpec::Core::Runner.run` few times in a row and spec file is `load`-ed between runs, the same specs are run twice. 


Steps to reproduce
--

There is one spec file in `spec/sample_spec.rb` containing one simple example. Fire its execution via `ruby run_spec_in_loop.rb` and see how it runs this spec once on the first run and twice on subsequent runs when spec file was explicitly `load`-ed. Load is used to reload file e.g. when spec file was changed and we want those changes to be picked up on next run.