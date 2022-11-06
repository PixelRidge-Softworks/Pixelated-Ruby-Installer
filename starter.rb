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

softtype = $softtype
puts ""

sleep(2)

puts "Ok! We will install #{softtype} for you!"
puts ""

sleep(2)

require("./classes/Gitclone.rb")

    if $softtype == "Pixelated-Backup"
        then 
            giturl = "https://github.com/Pixelated-Studios/Pixelated-Backup.git"
            destpa = "/etc/pixelated/ruby/bin"
            Gitclone.new(giturl, destpa)
            Gitclone.clone
    # commented out for future use
    # elsif
        else
            puts "ERROR! Git clone failed!"
    end

sleep(1)