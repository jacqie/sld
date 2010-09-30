class Meaning < ActiveRecord::Base
  #validates  :word, :uniqueness => {:scope => :category}
  belongs_to :word
  belongs_to :category
  has_many   :signs
end
