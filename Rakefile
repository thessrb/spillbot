# -*- ruby -*-
$:.unshift File.join(File.dirname(__FILE__),"lib")
require 'rubygems'
require 'hoe'
require 'spillbot'

Hoe.spec 'spillbot' do |prj|
  developer('thessaloniki.rb', 'thessaloniki-rb@gmail.com')
  prj.version=Spillbot::Version::STRING
  prj.summary = 'spillbot handles the publishing of thessaloniki.rb meetup information'
  prj.description = prj.paragraphs_of('README.txt', 1..4).join("\n\n")
  prj.url = "https://github.com/thessaloniki/spillbot"
  prj.changes = prj.paragraphs_of('History.txt', 0..1).join("\n\n")
end

# vim: syntax=ruby
