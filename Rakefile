# -*- ruby -*-
$:.unshift File.join(File.dirname(__FILE__),"lib")
require 'rubygems'
#require 'bundler/setup'
require 'hoe'
require 'spillbot'
require 'spillbot/poster'

namespace :hoe do
  Hoe.spec 'spillbot' do |prj|
    developer('thessaloniki.rb', 'thessaloniki-rb@gmail.com'  )
    prj.version=Spillbot::Version::STRING
    prj.summary = 'spillbot handles the publishing of thessaloniki.rb meetup information'
    prj.description = prj.paragraphs_of('README.txt', 1..4).join("\n\n")
    prj.url = "https://github.com/thessaloniki/spillbot"
    prj.changes = prj.paragraphs_of('History.txt', 0..1).join("\n\n")
  end
end

desc "Generate the meetup poster"
task :poster do |t|
  template_file=File.join(File.dirname(__FILE__),'template','tmpl_thessrb.svg')
  output="poster.svg"
  meetup=YAML.load(File.read(ENV['MEETUP']))
  svg=generate_poster(meetup,template_file)
  File.open(output,"wb"){ |f| f.write(svg) }
end
# vim: syntax=ruby


