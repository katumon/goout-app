class ShowController < ApplicationController
    def show
        @spot_category = SpotCategory.find_by(url_name: params[:category_name])
    end
    
end
 