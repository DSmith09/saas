class ContactsController < ApplicationController
    
    #This declares the variables used in the View for the contacts/new page
    #The object Contact is defined in the Contact Model
    def new
       @contact = Contact.new 
    end
    
    def create 
    
    end
end