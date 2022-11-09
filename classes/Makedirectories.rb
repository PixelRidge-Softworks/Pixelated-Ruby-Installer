#!/bin/ruby
# frozen_string_literal: true

# class for creating directories
class Makedirectories
  def initialize
    puts 'Creating directories!'
    puts '-' * 21

    sleep(2)
    FileUtils.mkdir_p "/etc/pixelated/ruby/bin/#{$softtype}"
    puts "We have created the /etc/pixelated/ruby/bin/#{$softtype} directory!"

    puts '-' * 54
    puts
    sleep(2)
  end
end
