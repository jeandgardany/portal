class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.string :nome, null: false
      t.string :codigo, null: false
      t.string :duracao, null: false
      t.string :tipo, null: false

      t.timestamps null: false
    end
  end
end
