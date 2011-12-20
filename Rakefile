# -*- ruby -*-
$:.unshift File.join(File.dirname(__FILE__),"lib")
require 'rubygems'
require 'hoe'
require 'spillbot'

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

# vim: syntax=ruby
namespace :env do
  desc "Updates the ruby development environment"
  task :update => "Gemfile.lock"
  
  file "Gemfile.lock" => "Gemfile" do
    if File.exists?("Gemfile.lock")
      sh("bundle update")
    else
      sh("bundle install")
    end
  end
end