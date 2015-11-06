require "sinatra"
require "sinatra/reloader" if development?

get "/" do
  erb(:home)
end

post "/post" do
  posts = blog.publish_posts
  @post = params[:post]
  erb(:blog)
end
