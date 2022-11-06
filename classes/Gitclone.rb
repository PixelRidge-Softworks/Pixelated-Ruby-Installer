#!/bin/ruby
# class ID declaration
class Gitclone
    require "fileutils"
    require "git"
    require "rubygems"
    # attribute reader so other classes/methods can read the instancevars in this class
    attr_reader :giturl, :destpa

    # init class method to set instance variables for giturl and destination path
    # Gitclone.new(https://github.com/vetheon/someshit.git, /home/vetheon)
    def initialize(giturl, destpa)
        @giturl = giturl
        @destpa = destpa
    end
    
    # class method to create directories and clone git repositories
    def self.clone
        puts "Creating directories!"
        21.times {
            print "-"
        }
        puts ""
        sleep(2)
        # right now, this is hardcoded. I should probably make it it's own method we can call...
        # it creates new directories
        FileUtils.mkdir_p "/etc/pixelated/ruby/bin"
        puts "We have created the /etc/pixelated/ruby/bin directory!"
        54.times {
            print "-"
        }
        puts ""
        sleep(2)
        puts "Cloning the requested Git Repository now!"
        41.times {
            print "-"
        }
        puts ""
        sleep(2)
        # this bit here simply uses the Git gem to clone the repository URL stored in the '@giturl' instance variable to the path stored in the '@destpa' instance variable
        if $softtype == "Pixelated-Backup"
            then
                git = Git.clone("https://github.com/Pixelated-Studios/Pixelated-Backup.git", path: "/etc/pixelated/ruby/bin", bare: true)
            else
                puts "ERROR! The requested Repo did not clone! Did you enter a correct option?"
        end

        # notify the user if the repository was cloned successfuly
        if Dir.exist?("/etc/pixelated/ruby/bin/$softtype")
            then 
                puts "Successfully Cloned the Repo!"
                puts ""
            else
                puts "ERROR! Repo was not cloned! Did you give us the right link?"
                puts ""
        end
    end
end