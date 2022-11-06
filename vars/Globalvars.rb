#!/bin/ruby

# start class for global vars we will need throughout the program
class Globalvars
    attr_reader :loadingbar1, :loadingbar2, :loadingbar3, :loadingbar4

    # start method to 
    def initialize
        puts "Loading global variables now!"
        # set instance variables for checking whether or not the global variables are set to 0 as they are currently not set 
        loadingbars = 0
        # wait after setting variables to ensure they are properly loaded incase of strange hangs
        sleep(2)
    end

    # initialize the loadbars global variables
    def init_loadbars
        # setting up global vars for loading bars
        puts "Loading the loading bars!"

        $loadingbar1 = "###          25% "

        $loadingbar2 = "######       50% "

        $loadingbar3 = "#########    75% "

        $loadingbar4 = "############ 100% "
        # change the loadingbars variable to 1 for the loadbars_check
        loadingbars = 1
    end

    # method to check if the loading bars are properly loaded
    def loadbars_check
        if loadingbars = 1
            then puts "Loading bars loaded!"
            else sleep(1) until loadingbars = 1
        end
    end
end