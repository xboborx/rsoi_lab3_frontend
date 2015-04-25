require 'net/http'

class SessionsController < ApplicationController
  def new
  end

  def create

    uri = URI(SESSION + "validate")
    res = Net::HTTP.post_form(uri, params)
    puts res.body
    puts res.code

    h= JSON.parse res.body


    if  res.code == '404'
      redirect_to '/login'
    else
      usersession = Usersession.new
      usersession.user_id =  h["id"]
      usersession.save

      session[:user_key] = usersession.key
      p session[:user_key]
      redirect_to '/'
    end


  end

  def destroy
    session[:user_key] = nil
    redirect_to '/login'
  end
end
