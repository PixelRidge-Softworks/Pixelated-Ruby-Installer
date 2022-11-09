#!/bin/ruby
# frozen_string_literal: true

# class for creating directories
class Makedirectories
  def initialize
    puts 'Creating directories!'
    21.times { print '-' }
    puts $new_line

    sleep(2)
    FileUtils.mkdir_p '/etc/pixelated/ruby/bin'
    puts 'We have created the /etc/pixelated/ruby/bin directory!'

    54.times {print '-' }
    puts $new_line
    sleep(2)
  end
end
