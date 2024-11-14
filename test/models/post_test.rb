# test/models/post_test.rb

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "should not save post without title" do 
    post = Post.new
    assert_not post.save, "Saved the post without a title"
  end
  
  test "should save post with title" do 
    post = Post.new(title: "test")
    assert post.save, "Failed to save the post with a title"
  end
end
