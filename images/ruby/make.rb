#!/usr/bin/env ruby
require 'erb'

version = ARGV[0]
version ||= '1.9.3-p484'

ver_index = version.split('-')[0].index('.', 2)
base_ver = version[0, ver_index]

template = File.new("Dockerfile.erb", "r").read
renderer = ERB.new(template)

File.new("Dockerfile", "w+").write renderer.result

