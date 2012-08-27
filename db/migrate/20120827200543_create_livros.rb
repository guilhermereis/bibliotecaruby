class CreateLivros < ActiveRecord::Migration
  def change
    create_table :livros do |t|
      t.string :titulo
      t.string :autor
      t.text :descricao
      t.references :pessoa

      t.timestamps
    end
    add_index :livros, :pessoa_id
  end
end
