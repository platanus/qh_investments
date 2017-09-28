class CreateInvestments < ActiveRecord::Migration[5.1]
  def change
    create_table :investments do |t|
      t.string :code
      t.text :description
      t.text :investment_type
      t.references :admin_user, foreign_key: true

      t.timestamps
    end
  end
end
