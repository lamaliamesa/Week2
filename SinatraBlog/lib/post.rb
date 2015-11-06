require 'sinatra'
require 'rspec'

class Post
  attr_reader :title, :date, :text
  def initialize title, date, text
    @title = title
    @date = date
    @text = text
  end
  def show_post
    puts @title
    puts @date 
    puts @text
  end

end


post1 = Post.new("Post Title 1","Date1","Post 1 Text")
blog.add_post (post1)
post2 = Post.new("Post Title 2","Date2","Post 2 Text")
blog.add_post (post2)
post3 = Post.new("Post Title 3","Date3","Post 3 Text")
blog.add_post (post3)
post4 = Post.new("Post Title 4","Date4","Post 4 Text")
blog.add_post (post4)
post5 = Post.new("Post Title 5","Date5","Post 5 Text")
blog.add_post (post5)
post6 = Post.new("Post Title 6","Date6","Post 6 Text")
blog.add_post (post6)
post7 = Post.new("Post Title 7","Date7","Post 7 Text")
blog.add_post (post7)
post8 = Post.new("Post Title 8","Date8","Post 8 Text")
blog.add_post (post8)

