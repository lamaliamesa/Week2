require 'sinatra'
require 'rspec'

class Blog
  def initialize title
    @list_of_posts = []
    @title = title 

  end
  def add_post post 
    @list_of_posts.push post 
  end

  def publish_posts 
    latest_posts.each do |post|
      post.show_post
    end
  end

  def latest_posts
    latest_posts = @list_of_posts.sort do |post1, post2|
      post2.date <=> post1.date
    end
  end
end




blog = Blog.new "Laura's blog"

blog.publish_posts