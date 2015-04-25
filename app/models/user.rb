require 'active_resource'

class User < ActiveResource::Base
  self.site = SESSION
  #self.user = "users"
  #self.password = "users"
  belongs_to :brand

  end
