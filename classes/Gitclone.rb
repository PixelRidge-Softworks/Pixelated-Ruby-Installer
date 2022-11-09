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
    $giturl = giturl
    $destpa = destpa
  end

  # class method to clone git repositories
  def self.clone
    puts 'Cloning the requested Git Repository now!'
    puts '-' * 41
    puts
    sleep(2)
    g = Git.open("/etc/pixelated/ruby/bin/#{$softtype}")
    # this bit here simply uses the Git gem to clone the repository URL stored in
    # the '@giturl' instance variable to the path stored in the '@destpa' instance variable
    # return unless $softtype == 'Pixelated-Backup'
    g.clone
  end

  # notify the user if the repository was cloned successfully
  def self.check
    if Dir.exist?("/etc/pixelated/ruby/bin/#{$softtype}/.git")
      puts "Successfully Cloned the Repo for #{$softtype}!"
      puts
    else
      puts 'ERROR! Repo was not cloned!'
      puts
    end
    puts
  end
end
