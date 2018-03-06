class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.boolean :a
      t.belongs_to :user, foreign_key: true
      t.belongs_to :design, foreign_key: true

      t.timestamps
    end
  end
end
