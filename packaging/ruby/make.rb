#!/usr/bin/env ruby
require 'erb'
require 'docker'

version = ARGV[0]
version ||= '1.9.3-p484'

ver_index = version.split('-')[0].index('.', 2)
base_ver = version[0, ver_index]

template = File.new("Dockerfile.erb", "r").read
renderer = ERB.new(template)

File.new("Dockerfile", "w+").write renderer.result

Docker.url = 'unix:///var/docker.sock'
Docker::Image.build_from_dir('.', { :name => 'foo' } )

##docker run -i -t -v `pwd`:/foo ruby cp ./ruby-1.9.3-p484.deb /foo/
