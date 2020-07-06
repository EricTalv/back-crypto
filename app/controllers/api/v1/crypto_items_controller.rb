module Api
  module V1
    class CryptoItemsController < ApplicationController
      before_action :set_crypto_item, only: [:show, :update, :destroy]

      # GET /crypto_items
      def index
        @crypto_items = CryptoItem.all

        render json: @crypto_items
      end

      # GET /crypto_items/1
      def show
        render json: @crypto_item
      end

      # POST /crypto_items
      def create
        @crypto_item = CryptoItem.new(crypto_item_params)

        if @crypto_item.save
          render json: @crypto_item, status: :created, location: @crypto_item
        else
          render json: @crypto_item.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /crypto_items/1
      def update
        if @crypto_item.update(crypto_item_params)
          render json: @crypto_item
        else
          render json: @crypto_item.errors, status: :unprocessable_entity
        end
      end

      # DELETE /crypto_items/1
      def destroy
        @crypto_item.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_crypto_item
          @crypto_item = CryptoItem.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def crypto_item_params
          params.require(:crypto_item).permit(:crypto_currency, :amount, :date_of_purchase, :wallet_location)
        end
    end
  end 
end