class Contact < ActiveRecord::Base
    #Validates that input is present when submitted to database 
    validates :name, presence: true
    validates :email, presence: true
end
    