class ContactsController < ApplicationController
    
    #This instantiates a new Contact object and saves it in a variable
    #The Contact object is saved in the contact.rb file
    def new
       @contact = Contact.new 
    end
    
    def create 
    
    end
end