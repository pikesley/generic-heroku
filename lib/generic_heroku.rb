require 'sinatra/base'

class GenericHeroku < Sinatra::Base
  get '/' do
    name = request.host.sub(/^www\./, '')
    name
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
