class CreateEntities < ActiveRecord::Migration[7.0]
  def change
    create_table :entities do |t|
      t.references :leprosorium, null: false, foreign_key: true
      t.references :disclaimer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
