class Article < ActiveRecord::Base
  attr_accessible :title, :url, :location_attributes
  attr_accessor :article_id

  has_one :location

  accepts_nested_attributes_for :location
end
