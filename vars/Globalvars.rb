#!/bin/ruby
# frozen_string_literal: true

# start class for global vars we will need throughout the program
class Globalvars

  # start init method
  def initialize
    puts 'Loading global variables now!'
    # set instance variables for checking whether or not the global variables are set to 0 as they are currently not set
    @loadingbars = '0'
    # wait after setting variables to ensure they are properly loaded in case of strange hangs
    sleep(2)
  end

  # initialize the loadbars global variables
  def init_loadbars
    # setting up global vars for loading bars
    $loadingbar1 = '###          25% '

    $loadingbar2 = '######       50% '

    $loadingbar3 = '#########    75% '

    $loadingbar4 = '############ 100% '
    # change the loadingbars variable to 1 for the loadbars_check
    @loadingbars = 1
  end

  # method to check if the loading bars are properly loaded
  def loadbars_check
    loop do
      sleep(1)
      if @loadingbars
        break
      end
    end
  end
end
