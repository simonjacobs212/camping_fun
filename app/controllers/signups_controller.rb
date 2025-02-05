class SignupsController < ApplicationController
  before_action :set_signup, only: [:show, :edit, :update]

  def index
      @signups = Signup.all
  end
  
  def show
  end

  def new
      @signup = Signup.new
  end

  def create
      signup = Signup.create(signup_params(:camper_id, :activity_id, :time))
        if signup.valid?
          redirect_to camper_path(signup.camper)
        else
          flash[:messages] = signup.errors.full_messages
          redirect_to new_signup_path
        end

      #byebug
      
  end

  def edit
  end

  def update
      @signup.update(signup_params(:camper_id, :activity_id, :time))
      redirect_to signup_path(@signup)
  end

  private

  def signup_params(*args)
      params.require(:signup).permit(*args)
  end
  
  def set_signup 
      @signup = Signup.find(params[:id])
  end

end
