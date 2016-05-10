class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.string :nome, null: false
      t.integer :matricula, null: false, default: 1001
      t.date :nascimento, null: false
      t.string :endereco, null: false
      t.date :admissao, null: false
      t.references :user, index: true, foreign_key: true
      t.references :funcao, index: true, foreign_key: true

      t.timestamps null: false
      #add_foreign_key :funcionarios, :user
      #add_foreign_key :funcionarios, :funcao

    end
  end
end
