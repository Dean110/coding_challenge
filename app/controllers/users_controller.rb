require 'httparty'

class UsersController < ApplicationController

  before_action :set_user, only: %i[ show edit update destroy ]

  # GET /users or /users.json
  def index
    @users = User.all
  end

  # GET /users/1 or /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new

  end

  # GET /users/1/edit
  def edit
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)
    puts "##################  -  #{user_params}"
    problem1_key = rand(1000 .. 5000)
    # https://us-central1-code-challenge-hack-days.cloudfunctions.net/euler_one?key=1000
    #response = HTTParty.get('https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY')
    # puts response.body if response.code == 200
    problem1_answer_url = "https://us-central1-code-challenge-hack-days.cloudfunctions.net/euler_one?key=#{problem1_key}"
    problem1_answer = HTTParty.get(problem1_answer_url).body
    problem1_description = _problem1_description(:key =>problem1_key)
    ProblemInfo.new(:key => problem1_key, :answer => problem1_answer, :description => problem1_description, :problem_id => "1", :user => @user).save
    
    problem2_key = rand(4_000_000 .. 8_000_000_000)
    problem2_answer_url = "https://us-central1-code-challenge-hack-days.cloudfunctions.net/euler_two?key=#{problem2_key}"
    problem2_answer = HTTParty.get(problem2_answer_url).body
    ProblemInfo.new(:key => problem2_key, :answer => problem2_answer, :problem_id => "2", :user => @user).save
    
    respond_to do |format|
      if @user.save
        format.html { redirect_to user_url(@user), notice: "User was successfully created." }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to user_url(@user), notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:username)
    end

    def _problem1_description(key:)
    "If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

    Find the sum of all the multiples of 3 or 5 below #{key}."
    end

end
