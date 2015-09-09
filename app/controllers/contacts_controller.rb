class ContactsController < ApplicationController
    
    #This instantiates a new Contact object and saves it in a variable
    #The Contact object is saved in the contact.rb file
    def new
       @contact = Contact.new 
    end
    
    def create 
        @contact = Contact.new(contact_params)
        
        #If Data is submitted/saved on contacts page, re-open the contacts/new page
        if @contact.save
            flash[:success] = "Message sent."
            redirect_to new_contact_path 
            #This occurs only if the page fails
        else 
            flash[:danger] = "Error occurred during post"
            redirect_to new_contact_path
        end
    end
    
    #White Listing for Query String Parameters
    private 
        def contact_params
            params.require(:contact).permit(:name, :email, :comments)
        end
end