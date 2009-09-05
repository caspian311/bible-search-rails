class CreateTables < ActiveRecord::Migration
  def self.up
    create_table :bibles, :primary_key => :id, :options => "auto_increment = 10000" do |t|
      t.integer :id
      t.string :name
      t.string :publisher
    end

    create_table :books, :primary_key => :id do |t|
      t.string :title
      t.belongs_to :bible
    end

    create_table :chapters, :primary_key => :id do |t|
      t.belongs_to :book
    end

    create_table :verses, :primary_key => :id do |t|
      t.string :text
      t.belongs_to :chapter
    end
  end

  def self.down
    drop_table :chapters
    drop_table :books
    drop_table :bibles
  end
end
