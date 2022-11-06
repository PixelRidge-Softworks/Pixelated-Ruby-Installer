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

puts "What are you trying to install?"

31.times {
    print "-"
}
puts ""

$softtype = gets.chomp

sleep(2)

puts "Ok! We will install #{softtype} for you!"

sleep(2)

require("./classes/Gitclone.rb")

if $softtype = "Pixelated-Backup"
    then Gitclone.initialize(https://github.com/Pixelated-Studios/Pixelated-Backup.git, /etc/pixelated/bin/Pixelated-Backup)
    then Gitclone.clone

sleep(1)
