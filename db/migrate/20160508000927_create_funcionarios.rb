class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.string :nome, null: false
      t.string :matricula, null: false, default: 'MF1001', unique: true
      t.date :nascimento, null: false
      t.string :endereco, null: false
      t.date :admissao, null: false
      t.string :status, null: false, default: "Ativo"
      t.references :user, index: true, foreign_key: true
      t.references :funcao, index: true, foreign_key: true

      t.timestamps null: false
      
    end
  end
end
