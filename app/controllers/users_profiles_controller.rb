class UsersProfilesController < ApplicationController
  before_action :set_users_profile, only: [:show, :edit, :update, :destroy]

  # GET /users_profiles
  # GET /users_profiles.json
  def index
    @users_profiles = UsersProfile.all
  end

  # GET /users_profiles/1
  # GET /users_profiles/1.json
  def show
  end

  # GET /users_profiles/new
  def new
    @users_profile = UsersProfile.new
    @profiles = Profile.all
    @users = User.all
  end

  # GET /users_profiles/1/edit
  def edit
  end

  # POST /users_profiles
  # POST /users_profiles.json
  def create
    @users_profile = UsersProfile.new(users_profile_params)

    respond_to do |format|
      if @users_profile.save
        format.html { redirect_to @users_profile, notice: 'Users profile was successfully created.' }
        format.json { render :show, status: :created, location: @users_profile }
      else
        format.html { render :new }
        format.json { render json: @users_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_profiles/1
  # PATCH/PUT /users_profiles/1.json
  def update
    respond_to do |format|
      if @users_profile.update(users_profile_params)
        format.html { redirect_to @users_profile, notice: 'Users profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @users_profile }
      else
        format.html { render :edit }
        format.json { render json: @users_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_profiles/1
  # DELETE /users_profiles/1.json
  def destroy
    @users_profile.destroy
    respond_to do |format|
      format.html { redirect_to users_profiles_url, notice: 'Users profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_profile
      @users_profile = UsersProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def users_profile_params
      params.require(:users_profile).permit(:user_id, :profile_id)
    end
end
