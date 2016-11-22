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
        params[:luminosity].zip(params[:temperature]).each do |luminosity, temperature|
          @node.data << Datum.new(luminosity: luminosity, temperature: temperature)
        end
      end
    end
  end
end
