require_relative '../blog.rb'
require 'rspec'

RSpec.describe 'Blog' do
  before :each do 
    @blog = Blog.new("Laura's Blog")
  end

  describe '#add_post' do
    it 'returns an array of the posts added' do
      expect(@blog.publish_posts).to eq([])
    end
  end
  describe '#latest_post' do
    it 'returns post in descending order' do
      expect(@blog.publish_posts).to eq([])
    end
  end

end
