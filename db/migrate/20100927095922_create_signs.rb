class CreateSigns < ActiveRecord::Migration
  def self.up
    create_table :signs do |t|
      t.text :description
      t.text :gesturegram
      t.text :xmlDescription
      t.string :renderedFile
      t.references :signLanguage
      t.references :meaning

      t.timestamps
    end
  end

  def self.down
    drop_table :signs
  end
end
