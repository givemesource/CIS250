class CreateWishers < ActiveRecord::Migration
  def self.up
    create_table :wishers do |t|
      t.string :name
      t.string :password

      t.timestamps
    end
  end

  def self.down
    drop_table :wishers
  end
end
