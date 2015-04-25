require 'active_resource'

class Brand < ActiveResource::Base
  self.site = BRANDS
  #self.user = "brands"
  #self.password = "brands"
  has_many :cars
end