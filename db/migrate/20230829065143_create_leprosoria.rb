# frozen_string_literal: true

class CreateLeprosoria < ActiveRecord::Migration[7.0]
  def change
    create_table :leprosoria do |t|
      t.string :title

      t.timestamps
    end
    add_index :leprosoria, :title, unique: true
  end
end
