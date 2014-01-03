require 'sinatra/base'
require 'haml'

class GenericHeroku < Sinatra::Base
  @@not_properties = [
      'andrewnormanbaillie.org',
      'maggiebaillie.org'
  ]
  get '/' do
    name          = request.host.sub(/^www\./, '')
    show_property = @@not_properties.any? { |i| i =~ /#{name}/ } ^ true
    haml :index, :locals => {
        :title           => name,
        :bootstrap_theme => 'http://bootswatch.com/amelia/bootstrap.min.css',
        :show_property   => show_property
    }
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
