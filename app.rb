require 'sinatra'

before '/admin/*' do
  @msg="admin area!"
end

before do
  @author="taguchi"
end

after do
  logger.info "page displayed successfullly"
end

get '/' do
  @title="main index"
  @content="main content by " + @author
  erb :index
end

get '/about' do
  @title="about this page"
  @content="this page is ... by " + @author
  @email="taguchi@mail"
  erb :about
end