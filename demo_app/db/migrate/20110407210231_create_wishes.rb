class CreateWishes < ActiveRecord::Migration
  def self.up
    create_table :wishes do |t|
      t.integer :wisher_id
      t.string :description
      t.date :due_date

      t.timestamps
    end
  end

  def self.down
    drop_table :wishes
  end
end
