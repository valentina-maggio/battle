require 'sinatra/base'
require 'sinatra/reloader' 

class Battle < Sinatra::Base


  run! if app_file == $0
end