require 'active_resource'

class Car < ActiveResource::Base
  self.site = CARS
  #self.user = "cars"
  #self.password = "cars"
  belongs_to :brand


end