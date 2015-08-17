require 'sinatra'

=begin
get '/from/*/to/*' do |f, t|
  "from #{f} to #{t}"
end
=end

get %r{/users/([0-9]*)} do |i|
  "users id = #{i}"
end