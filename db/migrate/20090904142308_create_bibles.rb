class CreateBibles < ActiveRecord::Migration
  def self.up
    create_table :bibles, :primary_key => :id, :options => "auto_increment = 10000" do |t|
      t.integer :id
      t.string :name
      t.string :publisher
    end
  end

  def self.down
    drop_table :bibles
  end
end
