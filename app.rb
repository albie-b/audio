require 'sinatra/base' #esential web app code
require './lib/audio.rb'

class AudioPlayer < Sinatra::Base#esential web app code
  enable :sessions, :method_override
  #esential web app code

  get '/' do
    @songs = Audio.all
    erb :"music/index"
  end

  run! if app_file == $0#esential web app code
end#esential web app code
