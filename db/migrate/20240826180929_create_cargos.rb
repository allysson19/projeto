class CreateCargos < ActiveRecord::Migration[7.2]
  def change
    create_table :cargos do |t|
      t.string :nomecargo
      t.text :descricao
      t.string :departamento
      t.string :nivelcargo
      t.string :salbase
      t.text :requisitos
      t.text :beneficios
      t.string :statuscargo

      t.timestamps
    end
  end
end
