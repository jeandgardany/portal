class AddFieldToAlunos < ActiveRecord::Migration
  def change
    add_column :alunos, :sexo, :string, null: false
  end
end
