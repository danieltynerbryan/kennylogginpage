class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string :name

      t.timestamps
    end
  end
end
