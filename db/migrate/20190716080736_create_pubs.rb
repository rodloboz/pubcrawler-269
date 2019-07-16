class CreatePubs < ActiveRecord::Migration[5.2]
  def change
    create_table :pubs do |t|
      t.string :name
      t.string :address
      t.text :description
      t.string :photo
      t.string :district

      t.timestamps
    end
  end
end
