require 'sinatra/base'
require 'haml'

class GenericHeroku < Sinatra::Base
  get '/' do
    name = request.host.sub(/^www\./, '')
    haml :index, :locals => {
        :title           => name
#        :bootstrap_theme => 'http://bootswatch.com/amelia/bootstrap.min.css'
    }
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
