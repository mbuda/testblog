class Comment
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Taggable

  field :body, type: String
  field :abusive?, type: Boolean, default: false

  validates_presence_of :body

  belongs_to :user
  belongs_to :post
  has_many :votes

  def abusive
    if votes.value < -2
      update_attribute :abusive?, true
    end
  end
  
end
