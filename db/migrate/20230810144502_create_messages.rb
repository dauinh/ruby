class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :content
      t.belongs_to :conversation, null: false, foreign_key: true

      t.timestamps
    end
  end
end