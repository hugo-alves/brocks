class CreateImagens < ActiveRecord::Migration
  def change
    create_table :imagens do |t|
      t.string :description

      t.timestamps
    end
  end
end
