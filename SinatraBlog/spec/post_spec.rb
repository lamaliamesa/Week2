require_relative '../post.rb'
require 'rspec'


RSpec.describe 'Post' do
  before :each do 
    @post = Post.new("Title1","18 aug","hellopeople")
  end

  describe '#show_post' do
    it 'returns the correct title for the post' do
      expect(@post.title).to eq("Title1")
    end
    it 'returns the correct date for the post' do
      expect(@post.date).to eq("18 aug")
    end
     it 'returns the correct text for the post' do
      expect(@post.text).to eq("hellopeople")
    end
  end
end