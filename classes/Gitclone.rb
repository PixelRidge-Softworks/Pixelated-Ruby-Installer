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

    def self.clone
        puts "Creating directories!"
        sleep(2)
        21.times {
            print "-"
        }
        sleep(2)
        FileUtils.mkdir_p "/etc/pixelated/ruby/bin"
        puts "We have created the /etc/pixelated/ruby/bin directory!"
        sleep(2)
        puts "Cloning the requested Git Repository now!"
        Git.clone(@giturl, path: @destpa)
    end
end