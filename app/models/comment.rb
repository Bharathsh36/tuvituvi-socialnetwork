class Comment < ActiveRecord::Base
	
  include PublicActivity::Model
  tracked owner: ->(controller, model) { controller && controller.current_user}

  belongs_to :user
  belongs_to :post
  has_many :replies, dependent: :destroy
end
