#!/bin/ruby
# frozen_string_literal: true

# class for creating directories
class Makedirectories
  def initialize
    puts 'Creating directories!'
    21.times { print '-' }
    puts $new_line

    sleep(2)
    FileUtils.mkdir_p '/usr/local/pixelated/ruby/bin'
    puts 'We have created the /usr/local/pixelated/ruby/bin directory!'

    54.times {print '-' }
    puts $new_line
    sleep(2)
  end
end
