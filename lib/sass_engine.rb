require 'sass'

class SassEngine < Sinatra::Base

  set :views, File.join(root, '..', 'assets', 'stylesheets')

  get '/stylesheets/*.css' do
    filename = params[:splat].first
    scss filename.to_sym
  end

end
