class User < ActiveRecord::Base
	attr_accessible :username, :email, :password, :password_confirmation, :locations_attributes
	attr_accessor :user_id
    acts_as_authentic

    has_many :locations

    accepts_nested_attributes_for :location
end
