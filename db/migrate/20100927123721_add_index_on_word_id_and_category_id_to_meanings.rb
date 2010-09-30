class AddIndexOnWordIdAndCategoryIdToMeanings < ActiveRecord::Migration
  def self.up
    add_index :meanings, [:word_id, :category_id], :unique => true
  end

  def self.down
  end
end
