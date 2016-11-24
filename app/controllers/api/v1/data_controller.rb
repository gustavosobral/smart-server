module Api
  module V1
    class DataController < ActionController::Base
      def create
        @node = Node.find_or_create_by(uuid: params[:uuid])
        create_data
        head :ok
      end

      private

      def create_data
        params[:luminosity].zip(params[:temperature], params[:ppm]).each do |luminosity, temperature, ppm|
          @node.data.create(luminosity: luminosity, temperature: temperature, ppm: ppm)
        end
      end
    end
  end
end
