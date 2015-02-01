class AddSlyceToPins < ActiveRecord::Migration
  def change
    add_column :pins, :slyce, :string
  end
end
