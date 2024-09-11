class CreateDepartamentos < ActiveRecord::Migration[7.2]
  def change
    create_table :departamentos do |t|
      t.string :nomedepartamento
      t.text :descricao
      t.string :codigodep
      t.string :localizacao
      t.string :string
      t.string :statusdep

      t.timestamps
    end
  end
end
