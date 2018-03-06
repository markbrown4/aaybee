class CreateDesigns < ActiveRecord::Migration[5.1]
  def change
    create_table :designs do |t|
      t.string :a
      t.string :b
      t.string :title
      t.text :description
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
