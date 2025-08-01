class CreateAgentes < ActiveRecord::Migration[8.0]
  def change
    create_table :agentes do |t|
      t.string :nombre
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
