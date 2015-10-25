class PagesController < ApplicationController
    def home
    #This allows me to identify which Plan to use in the event of a button press from the home page
    #Find is based on the id in the Plan DB Table
       @basic_plan = Plan.find(1)
       @pro_plan = Plan.find(2)
    end
    
    def about
    
    end
end
