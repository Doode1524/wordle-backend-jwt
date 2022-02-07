class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.integer :current_streak, default: 0
      t.integer :best_streak, default: 0
      t.integer :wins, default: 0
      t.integer :losses, default: 0
      t.integer :win_percentage, default: 0

      t.timestamps
    end
  end
end
