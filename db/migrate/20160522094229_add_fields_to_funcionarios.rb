class AddFieldsToFuncionarios < ActiveRecord::Migration
  def change
    add_column :funcionarios, :sexo, :string, null: false
    add_column :funcionarios, :cpf, :string, null: false, unique: true
    add_column :funcionarios, :rg, :string, null: false, unique: true
  end
end
