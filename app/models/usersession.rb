require 'active_resource'

class Usersession < ActiveResource::Base
  self.site = SESSION
end