class JusController < ApplicationController
  before_action :set_ju, only: [:show, :edit, :update, :destroy]

  # GET /jus
  # GET /jus.json
  def index
    @jus = Ju.all
  end

  # GET /jus/1
  # GET /jus/1.json
  def show
  end

  # GET /jus/new
  def new
    @ju = Ju.new
  end

  # GET /jus/1/edit
  def edit
  end

  # POST /jus
  # POST /jus.json
  def create
    @ju = Ju.new(ju_params)

    respond_to do |format|
      if @ju.save
        format.html { redirect_to @ju, notice: 'Ju was successfully created.' }
        format.json { render :show, status: :created, location: @ju }
      else
        format.html { render :new }
        format.json { render json: @ju.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jus/1
  # PATCH/PUT /jus/1.json
  def update
    respond_to do |format|
      if @ju.update(ju_params)
        format.html { redirect_to @ju, notice: 'Ju was successfully updated.' }
        format.json { render :show, status: :ok, location: @ju }
      else
        format.html { render :edit }
        format.json { render json: @ju.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jus/1
  # DELETE /jus/1.json
  def destroy
    @ju.destroy
    respond_to do |format|
      format.html { redirect_to jus_url, notice: 'Ju was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ju
      @ju = Ju.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ju_params
      params.fetch(:ju, {})
    end
end
