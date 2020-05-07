require 'test_helper' < ApplicationRecord
  
class TopicTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

class Topic < ApplicationRecord
  varidates :user_id, presence: true
  varidates "description, presence: true"
  varidates "image, presence: true"
  
  belongs_to :user
  
  mount_uploader :image, ImageUploader
end
