#!/bin/ruby
# frozen_string_literal: true

# class ID declaration
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

  def mkdirs
    puts 'Creating directories!'
    21.times { print '-' }
    puts '\n'

    sleep(2)
    FileUtils.mkdir_p '/etc/pixelated/ruby/bin'
    puts 'We have created the /etc/pixelated/ruby/bin directory!'

    54.times {print '-' }
    puts '\n'
    sleep(2)
  end

  # class method to clone git repositories
  def clone
    puts 'Cloning the requested Git Repository now!'
    41.times do
      print '-'
    end
    puts ''
    sleep(2)
    # this bit here simply uses the Git gem to clone the repository URL stored in
    # the '@giturl' instance variable to the path stored in the '@destpa' instance variable
    return unless $softtype == 'Pixelated-Backup'

    Gitclone('https://github.com/Pixelated-Studios/Pixelated-Backup.git', path: '/etc/pixelated/ruby/bin', bare: true)


    # notify the user if the repository was cloned successfully
  end

  def gitclone_check
    if Dir.exist?('/etc/pixelated/ruby/bin/$softtype')
      puts "Successfully Cloned the Repo!#{$new_line}"
    else
      puts "ERROR! Repo was not cloned! Did you give us the right link?#{$new_line}"
    end
    puts ''
  end
end
