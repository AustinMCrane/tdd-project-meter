class Api::CoveragesController < ActionController::API
  def create
    project = Project.where(tag: params[:tag]).first
    @coverage = Coverage.new(coverage_params)
    @coverage.project = project
    if @coverage.save
      render json: @coverage, status: :created
    else
      render json: @coverage.errors, status: :unprocessable_entry
    end
  end

    private

    def coverage_params
      params.require(:coverage).permit(:commit, :model, :controller)
    end
end
