class Appearance < ApplicationRecord

  belongs_to :episode
  belongs_to :guest

  validates :rating, :inclusion => {:in => [1,2,3,4,5], :message => "Select between 1-5"}


end
