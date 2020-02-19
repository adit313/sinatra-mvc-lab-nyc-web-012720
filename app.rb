require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pg1 = PigLatinizer.new
    @text = pg1.piglatinize(params[:user_phrase])
    erb :result
  end

end