class RolesController < ApplicationController
  before_action :set_role, only: %i[ show update destroy ]

  # GET /movies/1/roles
  # GET /movies/1/roles.json
  def index
    @roles = Role.all
  end

  # GET /movies/1/roles/1
  # GET /movies/1/roles/1.json
  def show
  end

  # POST /movies/1/roles
  # POST /movies/1/roles.json
  def create
    @role = Role.new(role_params)

    if @role.save
      render :show, status: :created, location: movie_role_url(params[:movie_id], @role)
    else
      render json: @role.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /movies/1/roles/1
  # PATCH/PUT /movies/1/roles/1.json
  def update
    if @role.update(role_params)
      render :show, status: :ok, location: movie_role_url(params[:movie_id], @role)
    else
      render json: @role.errors, status: :unprocessable_entity
    end
  end

  # DELETE /movies/1/roles/1
  # DELETE /movies/1/roles/1.json
  def destroy
    @role.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_role
      params[:movie_id]
      @role = Role.where(movie_id: params[:movie_id]).find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def role_params
      params.require(:role).permit(:movie_id, :person_id, :role_type)
    end
end
