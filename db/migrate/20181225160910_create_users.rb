# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.timestamps
    end
    add_column :users, :last_feed_on, :date, default: Date.yesterday
  end
end
