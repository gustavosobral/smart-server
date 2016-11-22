module Api
  module V1
    class DataController < ActionController::Base
      def create
        head :ok
      end
    end
  end
end
