class ProblemInfosController < ApplicationController
  before_action :set_problem_info, only: %i[ show edit update destroy ]

  # GET /problem_infos or /problem_infos.json
  def index
    @problem_infos = ProblemInfo.all
  end

  # GET /problem_infos/1 or /problem_infos/1.json
  def show
  end

  # GET /problem_infos/new
  def new
    @problem_info = ProblemInfo.new
  end

  # GET /problem_infos/1/edit
  def edit
  end

  # POST /problem_infos or /problem_infos.json
  def create
    @problem_info = ProblemInfo.new(problem_info_params)

    respond_to do |format|
      if @problem_info.save
        format.html { redirect_to problem_info_url(@problem_info), notice: "Problem info was successfully created." }
        format.json { render :show, status: :created, location: @problem_info }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @problem_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /problem_infos/1 or /problem_infos/1.json
  def update
    respond_to do |format|
      if @problem_info.update(problem_info_params)
        format.html { redirect_to problem_info_url(@problem_info), notice: "Problem info was successfully updated." }
        format.json { render :show, status: :ok, location: @problem_info }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @problem_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /problem_infos/1 or /problem_infos/1.json
  def destroy
    @problem_info.destroy

    respond_to do |format|
      format.html { redirect_to problem_infos_url, notice: "Problem info was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_problem_info
      @problem_info = ProblemInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def problem_info_params
      params.require(:problem_info).permit(:key, :answer, :user_id)
    end
end
