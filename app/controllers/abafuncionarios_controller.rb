class AbafuncionariosController < ApplicationController
  before_action :set_abafuncionario, only: %i[ show edit update destroy ]

  # GET /abafuncionarios or /abafuncionarios.json
  def index
    @abafuncionarios = Abafuncionario.all
  end

  # GET /abafuncionarios/1 or /abafuncionarios/1.json
  def show
  end

  # GET /abafuncionarios/new
  def new
    @abafuncionario = Abafuncionario.new
  end

  # GET /abafuncionarios/1/edit
  def edit
  end

  # POST /abafuncionarios or /abafuncionarios.json
  def create
    @abafuncionario = Abafuncionario.new(abafuncionario_params)

    respond_to do |format|
      if @abafuncionario.save
        format.html { redirect_to abafuncionario_url(@abafuncionario), notice: "Abafuncionario was successfully created." }
        format.json { render :show, status: :created, location: @abafuncionario }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @abafuncionario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abafuncionarios/1 or /abafuncionarios/1.json
  def update
    respond_to do |format|
      if @abafuncionario.update(abafuncionario_params)
        format.html { redirect_to abafuncionario_url(@abafuncionario), notice: "Cadastro de funciário atualizado" }
        format.json { render :show, status: :ok, location: @abafuncionario }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @abafuncionario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abafuncionarios/1 or /abafuncionarios/1.json
  def destroy
    @abafuncionario.destroy!

    respond_to do |format|
      format.html { redirect_to abafuncionarios_url, notice: "Cadastro de funcionario excluido" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_abafuncionario
      @abafuncionario = Abafuncionario.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def abafuncionario_params
      params.require(:abafuncionario).permit(:nomecompleto, :datanasc, :genero, :cpf, :rg, :rua, :numero, :complemento, :bairro, :cidade, :estado, :cep, :telefone, :email, :cargo, :status, :departamento)
    end
end
