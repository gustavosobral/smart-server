class NodesController < ApplicationController
  def show
    @node = set_node
    @data = @node.data.order(created_at: :desc).page(params[:page])
  end

  private

  def set_node
    Node.find(params[:id])
  end
end
