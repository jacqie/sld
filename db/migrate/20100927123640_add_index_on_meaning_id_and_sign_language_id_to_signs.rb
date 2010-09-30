class AddIndexOnMeaningIdAndSignLanguageIdToSigns < ActiveRecord::Migration
  def self.up
    add_index :signs, [:meaning_id, :signLanguage_id], :unique => true
  end

  def self.down
  end
end
