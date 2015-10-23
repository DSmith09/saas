class Plan < ActiveRecord::Base
    #Associates the different types of Plans with a User
    has_many :users
end