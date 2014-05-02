class Vote
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Taggable

  field :value, type: Integer

  belongs_to :user
  belongs_to :comment

  def vote
   
  end

end
