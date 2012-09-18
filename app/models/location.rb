class Location < ActiveRecord::Base
  attr_accessible :title, :article_attributes

  belongs_to :article
  belongs_to :user
end
