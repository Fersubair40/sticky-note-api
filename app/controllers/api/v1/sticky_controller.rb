module Api::V1
    class StickyController < ApplicationController
        def index
            @sticky = Sticky.order("created_at DESC")
            render json: @sticky
        end

        def create
            @sticky = Sticky.create(sticky_params)
            render json: @sticky
        end

        def update
            @sticky = Sticky.find(params[:id])
            @sticky.update_attributes(sticky_params)
            render json: @sticky
        end
        def destroy
      @idea = Idea.find(params[:id])
      if @idea.destroy
        head :no_content, status: :ok
      else
        render json: @idea.errors, status: :unprocessable_entity
      end
    end
        private

        def sticky_params
            params.require(:sticky).permit(:title, :body)
        end
    end
end