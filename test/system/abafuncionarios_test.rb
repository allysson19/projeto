require "application_system_test_case"

class AbafuncionariosTest < ApplicationSystemTestCase
  setup do
    @abafuncionario = abafuncionarios(:one)
  end

  test "visiting the index" do
    visit abafuncionarios_url
    assert_selector "h1", text: "Abafuncionarios"
  end

  test "should create abafuncionario" do
    visit abafuncionarios_url
    click_on "New abafuncionario"

    fill_in "Bairro", with: @abafuncionario.bairro
    fill_in "Cargo", with: @abafuncionario.cargo
    fill_in "Cep", with: @abafuncionario.cep
    fill_in "Cidade", with: @abafuncionario.cidade
    fill_in "Complemento", with: @abafuncionario.complemento
    fill_in "Cpf", with: @abafuncionario.cpf
    fill_in "Datanasc", with: @abafuncionario.datanasc
    fill_in "Departamento", with: @abafuncionario.departamento
    fill_in "Email", with: @abafuncionario.email
    fill_in "Estado", with: @abafuncionario.estado
    fill_in "Genero", with: @abafuncionario.genero
    fill_in "Nomecompleto", with: @abafuncionario.nomecompleto
    fill_in "Numero", with: @abafuncionario.numero
    fill_in "Rg", with: @abafuncionario.rg
    fill_in "Rua", with: @abafuncionario.rua
    fill_in "Status", with: @abafuncionario.status
    fill_in "Telefone", with: @abafuncionario.telefone
    click_on "Create Abafuncionario"

    assert_text "Abafuncionario was successfully created"
    click_on "Back"
  end

  test "should update Abafuncionario" do
    visit abafuncionario_url(@abafuncionario)
    click_on "Edit this abafuncionario", match: :first

    fill_in "Bairro", with: @abafuncionario.bairro
    fill_in "Cargo", with: @abafuncionario.cargo
    fill_in "Cep", with: @abafuncionario.cep
    fill_in "Cidade", with: @abafuncionario.cidade
    fill_in "Complemento", with: @abafuncionario.complemento
    fill_in "Cpf", with: @abafuncionario.cpf
    fill_in "Datanasc", with: @abafuncionario.datanasc
    fill_in "Departamento", with: @abafuncionario.departamento
    fill_in "Email", with: @abafuncionario.email
    fill_in "Estado", with: @abafuncionario.estado
    fill_in "Genero", with: @abafuncionario.genero
    fill_in "Nomecompleto", with: @abafuncionario.nomecompleto
    fill_in "Numero", with: @abafuncionario.numero
    fill_in "Rg", with: @abafuncionario.rg
    fill_in "Rua", with: @abafuncionario.rua
    fill_in "Status", with: @abafuncionario.status
    fill_in "Telefone", with: @abafuncionario.telefone
    click_on "Update Abafuncionario"

    assert_text "Abafuncionario was successfully updated"
    click_on "Back"
  end

  test "should destroy Abafuncionario" do
    visit abafuncionario_url(@abafuncionario)
    click_on "Destroy this abafuncionario", match: :first

    assert_text "Abafuncionario was successfully destroyed"
  end
end
