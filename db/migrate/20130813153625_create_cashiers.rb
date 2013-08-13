class CreateCashiers < ActiveRecord::Migration
  def change
    create_table :cashiers do |t|
      t.decimal :money

      t.timestamps
    end
  end
end
