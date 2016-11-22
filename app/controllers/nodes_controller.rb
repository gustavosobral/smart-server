class NodesController < ApplicationController
  def show
    @node = set_node
  end

  private

  def set_node
    Node.find(params[:id])
  end
end
