class Word < ActiveRecord::Base
  validates :name,  :presence => true, 
                    :uniqueness => true
  has_many :meanings
  
  def to_param
    name
  end
  
  def self.get(name) # trzeba użyć self., bo get to ma być metoda klasy, a nie obiektu
    find_by_name(name) #|| raise ActiveRecord::RecordNotFound
  end
end
