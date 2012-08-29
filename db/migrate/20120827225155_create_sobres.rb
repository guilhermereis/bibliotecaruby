class CreateSobres < ActiveRecord::Migration
  def change
    create_table :sobres do |t|

      t.timestamps
    end
  end
end
