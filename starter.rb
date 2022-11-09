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

# This part creates a password for a user then assigns it to the variable pwd
# I don't know if it works as it came from StackOverflow
### BEGIN PASSWORD GENERATOR ###
# def do_create_user(no,us,pw)
#  pwd = pw.crypt("$5$a1")
#  1.upto(no) do | x |
#         uname = us + x.to_s
#         result = system("useradd -m -p '#{ pwd }' #{ uname }")
#         if result
#                 puts "#{ uname } created!"
#             else
#                 puts "#{ uname } failed!"
#         end
#     end
# end
### END PASSWORD GENERATOR ###


#
# # this code was imported from a user on StackOverflow as a method to de-escalate user permissions to non-root
# # when running certain parts of the script
# #
# # This way a user can run the program as SUDO and we can make everything we don't need root for
# # run as a regular user instead of root
# #
# # I know this method works, I just don't know how to use it yet.
#
### BEING UNUSED CODE ###
# logname = User.find(session[:user_id]).name
# uname = logname.strip uid = Integer(id -u '#{uname}'.strip) gid = Integer(id -g '#{uname}'.strip)
#
# Drops privileges to that of the specified user
# def drop_priv user
#  Process.initgroups(user.username, user.gid)
#  Process::Sys.setegid(user.gid)
#  Process::Sys.setgid(user.gid)
#  Process::Sys.setuid(user.uid)
# end
#
# Execute the provided block in a child process as the specified user
# The parent blocks until the child finishes.
# def do_as_user user
#  unless pid = fork
#    drop_priv(user)
#    yield if block_given?
#    exit! 0 # prevent remainder of script from running in the child process
#  end
#  puts "Child running as PID #{pid} with reduced privs"
#  Process.wait(pid)
# end
#
# at_exit { puts 'Script finished.' }
#
# User = Struct.new(:username, :uid, :gid)
# user = User.new('nobody', 65534, 65534)
#
# do_as_user(user) do
#  sleep 1 # do something more useful here
#  exit! 2 # optionally provide an exit code
# end
#
# puts "Child exited with status #{$?.exitstatus}"
# puts 'Running stuff as root'
# sleep 1
#
# do_as_user(user) do
#  puts 'Doing stuff as a user'
#  sleep 1
# end
#
### END UNUSED CODE ###

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
  giturl = 'https://github.com/Pixelated-Studios/Pixelated-Backup.git'
  destpa = '/usr/pixelated/ruby/bin'
  Gitclone.new(giturl, destpa)
  Gitclone.clone
  Gitclone.check
# commented out for future use
when 1

  puts 'Updated Successfully!'
  puts 'Exiting now!'

else
  puts 'ERROR! Git clone failed!'
end

sleep(1)
