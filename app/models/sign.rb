class Sign < ActiveRecord::Base
  belongs_to :signLanguage
  belongs_to :meaning
  #validates  :meaning, :uniqueness => {:scope => :signLanguage}
  has_one :word, :through => :meaning
  has_one :category, :through => :meaning
  def self.getLastFive(signLanguage_id)
    order("updated_at DESC").limit(5)
  end
end
