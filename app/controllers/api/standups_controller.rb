module API
  class StandupsController < APIController
    before_action :set_standup, only: [:show, :update, :destroy]

    # GET /standups
    def index
      @standups = Standup.all

      render json: @standups
    end

    # GET /standups/1
    def show
      render json: @standup
    end

    # POST /standups
    def create
      @standup = Standup.new(standup_params)

      if @standup.save
        render json: @standup, status: :created, location: @standup
      else
        render json: @standup.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /standups/1
    def update
      if @standup.update(standup_params)
        render json: @standup
      else
        render json: @standup.errors, status: :unprocessable_entity
      end
    end

    # DELETE /standups/1
    def destroy
      @standup.destroy
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_standup
      @standup = Standup.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def standup_params
      params.require(:standup).permit(:date, :comments, :meetings, :team_id)
    end
  end
end
