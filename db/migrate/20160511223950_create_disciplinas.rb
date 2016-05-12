class CreateDisciplinas < ActiveRecord::Migration
  def change
    create_table :disciplinas do |t|
      t.string :nome
      t.integer :codigo
      t.references :curso, index: true, foreign_key: true
      t.references :funcao, index: true, foreign_key: true
      t.references :funcionario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
