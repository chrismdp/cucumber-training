class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :firstname
      t.string :familyname
      t.string :gender
      t.date :dateofbirth

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
