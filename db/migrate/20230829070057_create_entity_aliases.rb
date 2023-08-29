# frozen_string_literal: true

class CreateEntityAliases < ActiveRecord::Migration[7.0]
  def change
    create_table :entity_aliases do |t|
      t.string :text
      t.references :entity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
