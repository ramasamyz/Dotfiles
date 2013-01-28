#!/usr/bin/env ruby
require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:PROMPT_MODE]=:SIMPLE

def y(obj)
  puts obj.to_yaml
end

require 'irbtools'

# modified from https://github.com/ConradIrwin/pry-debundle/pull/5
#if defined?(Gem.post_reset_hooks)
#  Gem.post_reset_hooks.reject!{ |hook| hook.source_location.first =~ %r{/bundler/} }
#  Gem::Specification.reset
#  load 'rubygems/custom_require.rb'
#  alias gem require                                                              
#end
