class BetaController < ApplicationController
  before_action :set_betum, only: [ :edit, :update, :destroy]

  # GET /beta
  # GET /beta.json
  def index
    @beta = Betum.all
    # flash[:notice2] = "flash message"
    # session[:notice2] = "session message"
    data = { data: {value: "10", id: "10"}}
    render json: @beta
  end

  # GET /beta/1
  # GET /beta/1.json
  def show
    render text: "data"
  end

  # GET /beta/new
  def new
    @betum = Betum.new
  end

  # GET /beta/1/edit
  def edit
  end

  # POST /beta
  # POST /beta.json
  def create
    # raise :test
    @betum = Betum.new(betum_params)

    respond_to do |format|
      if @betum.save
        format.html { redirect_to @betum, notice: 'Betum was successfully created.' }
        format.json { render :show, status: :created, location: @betum }
      else
        format.html { render :new }
        format.json { render json: @betum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beta/1
  # PATCH/PUT /beta/1.json
  def update
    respond_to do |format|
      if @betum.update(betum_params)
        format.html { redirect_to @betum, notice: 'Betum was successfully updated.' }
        format.json { render :show, status: :ok, location: @betum }
      else
        format.html { render :edit }
        format.json { render json: @betum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beta/1
  # DELETE /beta/1.json
  def destroy
    @betum.destroy
    respond_to do |format|
      format.html { redirect_to beta_url, notice: 'Betum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_betum
      @betum = Betum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def betum_params
      # params.require(:betum).permit(:name, :phone, :age)
      params.require(:betum).permit(:name, :age)
    end
end
