class CreateDisclaimers < ActiveRecord::Migration[7.0]
  def change
    create_table :disclaimers do |t|
      t.string :text
      t.references :leprosorium, null: false, foreign_key: true

      t.timestamps
    end
  end
end
