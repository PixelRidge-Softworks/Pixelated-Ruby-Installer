#!/bin/ruby
# frozen_string_literal: true

# class ID declaration for the gitclone class
class Gitclone
  require 'fileutils'
  require 'git'
  require 'rubygems'
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
    41.times do
      print '-'
    end
    puts $new_line
    sleep(2)
    # this bit here simply uses the Git gem to clone the repository URL stored in
    # the '@giturl' instance variable to the path stored in the '@destpa' instance variable
    return unless $softtype == 'Pixelated-Backup'

    Git.clone(github.com/Pixelated-Studios/Pixelated-Backup.git, path: /etc/pixelated/ruby/bin)

  end

  # notify the user if the repository was cloned successfully
  def gitcheck
    if Dir.exist?("/usr/local/pixelated/ruby/bin/#{$softtype}")
      puts "Successfully Cloned the Repo for #{softtype}!#{$new_line}"
    else
      puts "ERROR! Repo was not cloned! Did you give us the right link?#{$new_line}"
    end
    puts $new_line
  end
end
