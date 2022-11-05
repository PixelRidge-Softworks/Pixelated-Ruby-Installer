#!/bin/ruby

require "ruby_figlet"
require "rubygems"
require "git"
require("./vars/globalvars.rb")
require "fileutils"

puts RubyFiglet::Figlet.new("Pixelated Installer").to_s

108.times {
    print "~"
}
puts " "

sleep(2)

puts "Starting the Pixelated Installer now!"

sleep(2)

puts "loading gitclone module"

require("./classes/Gitclone.rb")

sleep(1)

puts $loadingbar1