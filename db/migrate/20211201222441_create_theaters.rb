class CreateTheaters < ActiveRecord::Migration[6.1]
  def change
    create_table :theaters do |t|
      t.string :name
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
