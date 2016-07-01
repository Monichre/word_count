require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/')do
  erb(:index)
end

get('/word_count') do
  @user_input_string = params.fetch('user_input_string')
  @user_input_word = params.fetch('user_input_word')
  @search_result = @user_input_string.word_count(@user_input_word)
  erb(:result)
end
