require "test_helper"

class AbafuncionariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @abafuncionario = abafuncionarios(:one)
  end

  test "should get index" do
    get abafuncionarios_url
    assert_response :success
  end

  test "should get new" do
    get new_abafuncionario_url
    assert_response :success
  end

  test "should create abafuncionario" do
    assert_difference("Abafuncionario.count") do
      post abafuncionarios_url, params: { abafuncionario: { bairro: @abafuncionario.bairro, cargo: @abafuncionario.cargo, cep: @abafuncionario.cep, cidade: @abafuncionario.cidade, complemento: @abafuncionario.complemento, cpf: @abafuncionario.cpf, datanasc: @abafuncionario.datanasc, departamento: @abafuncionario.departamento, email: @abafuncionario.email, estado: @abafuncionario.estado, genero: @abafuncionario.genero, nomecompleto: @abafuncionario.nomecompleto, numero: @abafuncionario.numero, rg: @abafuncionario.rg, rua: @abafuncionario.rua, status: @abafuncionario.status, telefone: @abafuncionario.telefone } }
    end

    assert_redirected_to abafuncionario_url(Abafuncionario.last)
  end

  test "should show abafuncionario" do
    get abafuncionario_url(@abafuncionario)
    assert_response :success
  end

  test "should get edit" do
    get edit_abafuncionario_url(@abafuncionario)
    assert_response :success
  end

  test "should update abafuncionario" do
    patch abafuncionario_url(@abafuncionario), params: { abafuncionario: { bairro: @abafuncionario.bairro, cargo: @abafuncionario.cargo, cep: @abafuncionario.cep, cidade: @abafuncionario.cidade, complemento: @abafuncionario.complemento, cpf: @abafuncionario.cpf, datanasc: @abafuncionario.datanasc, departamento: @abafuncionario.departamento, email: @abafuncionario.email, estado: @abafuncionario.estado, genero: @abafuncionario.genero, nomecompleto: @abafuncionario.nomecompleto, numero: @abafuncionario.numero, rg: @abafuncionario.rg, rua: @abafuncionario.rua, status: @abafuncionario.status, telefone: @abafuncionario.telefone } }
    assert_redirected_to abafuncionario_url(@abafuncionario)
  end

  test "should destroy abafuncionario" do
    assert_difference("Abafuncionario.count", -1) do
      delete abafuncionario_url(@abafuncionario)
    end

    assert_redirected_to abafuncionarios_url
  end
end
