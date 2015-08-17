require 'sinatra'

get '/:name' do |n|
  @name=n;
  erb :index
end