class CreateSignLanguages < ActiveRecord::Migration
  def self.up
    create_table :sign_languages do |t|
      t.string :name
      t.string :acronym
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :sign_languages
  end
end
