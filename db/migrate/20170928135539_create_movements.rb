class CreateMovements < ActiveRecord::Migration[5.1]
  def change
    create_table :movements do |t|
      t.string :amount
      t.string :value
      t.string :operation_type
      t.string :date
      t.references :investment, foreign_key: true

      t.timestamps
    end
  end
end
