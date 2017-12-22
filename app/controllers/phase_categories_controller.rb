class PhaseCategoriesController < ApplicationController
  before_action :set_phase_category, only: [:show, :edit, :update, :destroy]

  # GET /phase_categories
  # GET /phase_categories.json
  def index
    @phase_categories = PhaseCategory.all
  end

  # GET /phase_categories/1
  # GET /phase_categories/1.json
  def show
  end

  # GET /phase_categories/new
  def new
    @phase_category = PhaseCategory.new
  end

  # GET /phase_categories/1/edit
  def edit
  end

  # POST /phase_categories
  # POST /phase_categories.json
  def create
    @phase_category = PhaseCategory.new(phase_category_params)

    respond_to do |format|
      if @phase_category.save
        format.html { redirect_to @phase_category, notice: 'Phase category was successfully created.' }
        format.json { render :show, status: :created, location: @phase_category }
      else
        format.html { render :new }
        format.json { render json: @phase_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phase_categories/1
  # PATCH/PUT /phase_categories/1.json
  def update
    respond_to do |format|
      if @phase_category.update(phase_category_params)
        format.html { redirect_to @phase_category, notice: 'Phase category was successfully updated.' }
        format.json { render :show, status: :ok, location: @phase_category }
      else
        format.html { render :edit }
        format.json { render json: @phase_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phase_categories/1
  # DELETE /phase_categories/1.json
  def destroy
    @phase_category.destroy
    respond_to do |format|
      format.html { redirect_to phase_categories_url, notice: 'Phase category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phase_category
      @phase_category = PhaseCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phase_category_params
      params.fetch(:phase_category, {})
    end
end
