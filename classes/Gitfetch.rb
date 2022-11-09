#!/bin/ruby
# frozen_string_literal: true

require 'rubygems'
require 'git'
# class for fetching an already cloned repo
class Gitfetch
  def initialize
    Git.open("/etc/pixelated/ruby/bin/#{$softtype}").fetch
    puts "Successfully fetched #{$softtype}"
  end
end
