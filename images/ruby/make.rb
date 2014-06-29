#!/usr/bin/env ruby
require 'erb'

version = ARGV[0]
version ||= '1.9.3-p484'
template = File.new("Dockerfile.erb", "r").read
renderer = ERB.new(template)

puts output = renderer.result()

