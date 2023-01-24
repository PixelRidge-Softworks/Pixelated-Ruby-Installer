#!/bin/ruby

# this class will de-escalate an action from Root to Non-root and back again
# this class is currently unused. It's just here for future use
class Deescuser
  def initialize

 logname = User.find(session[:user_id]).name
 uname = logname.strip uid = Integer(id -u '#{uname}'.strip)
 gid = Integer(id -g "#{uname}".strip)

# Drops privileges to that of the specified user
 def drop_priv(user)
   Process.initgroups(user.username, user.gid)
   Process::Sys.setegid(user.gid)
   Process::Sys.setgid(user.gid)
   Process::Sys.setuid(user.uid)
 end

# Execute the provided block in a child process as the specified user
# The parent blocks until the child finishes.
 def do_as_user(user)
   unless (pid = fork)
     drop_priv(user)
     yield if block_given?
     exit! 0 # prevent remainder of script from running in the child process
   end
   puts "Child running as PID #{pid} with reduced privs"
   Process.wait(pid)
 end

 at_exit { puts 'Script finished.' }

 User = Struct.new(:username, :uid, :gid)
 user = User.new('nobody', 65534, 65534)

 do_as_user(user) do
  sleep 1 # do something more useful here
  exit! 2 # optionally provide an exit code
 end

 puts "Child exited with status #{$?.exitstatus}"
 puts 'Running stuff as root'
 sleep 1

 do_as_user(user) do
  puts 'Doing stuff as a user'
  sleep 1
 end
  end
  end

