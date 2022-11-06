#!/bin/ruby
# class ID declaration
class Gitclone
    # attribute reader so other classes/methods can read the instancevars in this class
    attr_reader :giturl, :destpa

    # init class method to set instance variables for giturl and destination path
    def initialize(giturl, destpa)
        @giturl = giturl
        @destpa = destpa
    end
    
    # class method to create directories and clone git repositories
    def self.clone
        puts "Creating directories!"
        sleep(2)
        21.times {
            print "-"
        }
        sleep(2)
        # right now, this is hardcoded. I should probably make it it's own global method we can call...
        # it creates new directories
        FileUtils.mkdir_p "/etc/pixelated/ruby/bin"
        puts "We have created the /etc/pixelated/ruby/bin directory!"
        54.times {
            print "-"
        }
        sleep(2)
        puts "Cloning the requested Git Repository now!"
        41.times {
            print "-"
        }
        sleep(2)
        # this bit here simply uses the Git gem to clone the repository URL stored in the '@giturl' instance variable to the path stored in the '@destpa' instance variable
        Git.clone(@giturl, path: @destpa)

        # notify the user if the repository was cloned successfuly
        if Dir.exist?(/etc/pixelated/ruby/bin/)
            then puts ""
    end
end