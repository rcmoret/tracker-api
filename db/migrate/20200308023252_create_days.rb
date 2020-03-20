# frozen_string_literal: true

class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.integer :day, null: false
      t.integer :month, null: false
      t.integer :year, null: false
    end
  end
end
