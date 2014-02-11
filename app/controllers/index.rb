get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/tweets_screen' do
  @text = params[:text]
  erb :waiting
end


# get '/tweets_of/:name' do
  # @name = params[:name]
  # erb :waiting
# end

post '/post_tweet' do
  CLIENT.update(params[:text])
end
