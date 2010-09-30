class CreateMeanings < ActiveRecord::Migration
  def self.up
    create_table :meanings do |t|
      t.text :description
      t.references :word
      t.references :category

      t.timestamps
    end
  end

  def self.down
    drop_table :meanings
  end
end
