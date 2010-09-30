class SignLanguage < ActiveRecord::Base
  validates :acronym,  :presence => true, :uniqueness => true
  validates :name, :presence => true
  has_many :signs
  has_many :meanings, :through => :signs
  default_scope order('sign_language.acronym')
end
