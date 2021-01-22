class DashboardsController < ApplicationController

    def index
    end

    def show
        @cat = Cat.find(params[:cat_id])
    end


end