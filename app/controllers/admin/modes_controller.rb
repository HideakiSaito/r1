class Admin::ModesController < ApplicationController
  before_action :login_required
  before_action :set_mode, only: [:show, :edit, :update, :destroy]
  include AdminUtil
  before_action :admin_login_required

  # GET /modes
  # GET /modes.json
  def index
    @search_form = SearchForm.new params[:search_form]
    @modes = Mode.order(:id)
    @modes = @modes.search @search_form.q if @search_form.q.present?
  end

  # GET /modes/1
  # GET /modes/1.json
  def show
  end

  # GET /modes/new
  def new
    @mode = Mode.new
  end

  # GET /modes/1/edit
  def edit
  end

  # POST /modes
  # POST /modes.json
  def create
    @mode = Mode.new(mode_params)

    respond_to do |format|
      if @mode.save
        format.html { redirect_to admin_mode_path(@mode), notice: 'Mode was successfully created.' }
        format.json { render :show, status: :created, location: @mode }
      else
        format.html { render new_admin_mode_path }
        format.json { render json: @mode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /modes/1
  # PATCH/PUT /modes/1.json
  def update
    respond_to do |format|
      if @mode.update(mode_params)
        format.html { redirect_to admin_mode_path(@mode), notice: 'Mode was successfully updated.' }
        format.json { render :show, status: :ok, location: @mode }
      else
        format.html { render edit_admin_mode_path(@mode) }
        format.json { render json: @mode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /modes/1
  # DELETE /modes/1.json
  def destroy
    @mode.destroy
    respond_to do |format|
      format.html { redirect_to admin_modes_path, notice: 'Mode was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mode
      @mode = Mode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mode_params
      params.require(:mode).permit(:name, :detail)
    end
end
