class Post < ActiveRecord::Base
  validates :title, presence: true
  belongs_to :blog_owner, class_name: "User", foreign_key: :user_id
  has_many :comments, :dependent => :destroy
end
