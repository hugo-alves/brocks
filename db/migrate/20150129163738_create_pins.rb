class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :nome
      t.string :urldoinsta

      t.timestamps
    end
  end
end
