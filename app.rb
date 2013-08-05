require 'sinatra/base'
require './lib/sass_engine'

module ReaderPoc
  class Application < Sinatra::Base

    set :root, File.dirname(__FILE__)

    use SassEngine

    set :views,       File.join(root, '/views')
    set :public_dir,  File.join(root, '/public')

    not_found do
      redirect '/404.html'
    end

    get "/" do
      erb :index
    end

  end
end
