class CreateAbafuncionarios < ActiveRecord::Migration[7.2]
  def change
    create_table :abafuncionarios do |t|
      t.string :nomecompleto
      t.date :datanasc
      t.string :genero
      t.string :cpf
      t.string :rg
      t.string :rua
      t.string :numero
      t.string :complemento
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :cep
      t.string :telefone
      t.string :email
      t.string :cargo
      t.string :status
      t.string :departamento

      t.timestamps
    end
  end
end
