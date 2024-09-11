require "application_system_test_case"

class DepartamentosTest < ApplicationSystemTestCase
  setup do
    @departamento = departamentos(:one)
  end

  test "visiting the index" do
    visit departamentos_url
    assert_selector "h1", text: "Departamentos"
  end

  test "should create departamento" do
    visit departamentos_url
    click_on "New departamento"

    fill_in "Codigodep", with: @departamento.codigodep
    fill_in "Descricao", with: @departamento.descricao
    fill_in "Localizacao", with: @departamento.localizacao
    fill_in "Nomedepartamento", with: @departamento.nomedepartamento
    fill_in "Statusdep", with: @departamento.statusdep
    fill_in "String", with: @departamento.string
    click_on "Create Departamento"

    assert_text "Departamento was successfully created"
    click_on "Back"
  end

  test "should update Departamento" do
    visit departamento_url(@departamento)
    click_on "Edit this departamento", match: :first

    fill_in "Codigodep", with: @departamento.codigodep
    fill_in "Descricao", with: @departamento.descricao
    fill_in "Localizacao", with: @departamento.localizacao
    fill_in "Nomedepartamento", with: @departamento.nomedepartamento
    fill_in "Statusdep", with: @departamento.statusdep
    fill_in "String", with: @departamento.string
    click_on "Update Departamento"

    assert_text "Departamento was successfully updated"
    click_on "Back"
  end

  test "should destroy Departamento" do
    visit departamento_url(@departamento)
    click_on "Destroy this departamento", match: :first

    assert_text "Departamento was successfully destroyed"
  end
end
