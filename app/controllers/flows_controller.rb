class FlowsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_flow, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @flows = Flow.page(params[:page] || 1)
    respond_with(@flows)
  end

  def show
    respond_with([@package, @flow])
  end

  def new
    @flow = Flow.new
    @package = Package.find_by(id: params[:package_id])
    respond_with(@flow)
  end

  def edit
  end

  def create
    @flow = Flow.new(flow_params)
    @flow.save
    @package = @flow.package
    respond_with([@package, @flow])
  end

  def update
    @flow.update(flow_params)
    @package = @flow.package
    respond_with([@package, @flow])
  end

  def destroy
    @package = @flow.package
    @flow.destroy
    respond_with(@package)
  end

  private
    def set_flow
      @flow = Flow.find(params[:id])
      @package = Package.find_by(id: params[:package_id])
    end

    def flow_params
      params.require(:flow).permit(:package_id, :title, :description, :tutorial, :icon)
    end
end
