#!/bin/ruby
# frozen_string_literal: true

require 'rubygems'
require 'git'
require 'ruby_figlet'
require('./vars/Globalvars')
require 'fileutils'
require 'io/console'
require('./classes/Gitclone')
require('./classes/Makedirectories')
require('./classes/Gitfetch')

two_lines = RubyFiglet::Figlet.new("Pixelated\nInstaller")
two_lines.show

puts '~' * 50

sleep(2)

puts 'What are you trying to install?'

puts '-' * 31

options = {
  '1' => 'Pixelated-Backup'
}
puts "#{options.keys} : #{options.values}"
softtype = nil
loop do
  print 'Enter option: '
  input = gets.chomp

  softtype = options[input]
  break if softtype
end

puts "You selected option #{softtype}"
$softtype = softtype

puts "Ok! We will install #{softtype} for you!"
puts

sleep(2)

Makedirectories.new

case $dirsreal
when 0
  giturl = "https://github.com/Pixelated-Studios/#{$softtype}.git"
  destpa = '/usr/pixelated/ruby/bin'
  Gitclone.new(giturl, destpa)
  Gitclone.clone
  Gitclone.check
when 1

  puts 'Updated Successfully!'
  puts 'Exiting now!'

else
  puts 'ERROR! Git clone failed!'
end

sleep(1)
