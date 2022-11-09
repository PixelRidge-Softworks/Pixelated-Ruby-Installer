#!/bin/ruby
# frozen_string_literal: true

# class ID declaration for the gitclone class
class Gitclone
  require 'rubygems'
  require 'git'
  # attribute reader so other classes/methods can read the instance vars in this class
  attr_reader :giturl, :destpa

  # init class method to set instance variables for giturl and destination path
  def initialize(giturl, destpa)
    @giturl = giturl
    @destpa = destpa
  end

  # class method to clone git repositories
  def clone
    puts 'Cloning the requested Git Repository now!'
    puts '-' * 41
    puts
    sleep(2)
    # this bit here simply uses the Git gem to clone the repository URL stored in
    # the '@giturl' instance variable to the path stored in the '@destpa' instance variable
    #return unless $softtype == 'Pixelated-Backup'

    Git.clone('https://github.com/Pixelated-Studios/Pixelated-Backup.git', '/etc/pixelated/ruby/bin')

  end

  # notify the user if the repository was cloned successfully
  def gitcheck
    if Dir.exist?("/usr/local/pixelated/ruby/bin/#{$softtype}")
      puts "Successfully Cloned the Repo for #{softtype}!"
      puts
    else
      puts 'ERROR! Repo was not cloned! Did you give us the right link?'
      puts
    end
    puts
  end
end
