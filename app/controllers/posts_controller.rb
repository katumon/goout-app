class PostsController < ApplicationController
    def new
        @post = Spot.new
    end
    def create
        @post = Spot.new(posts_params)
        @post.user_id = current_user.id
      if  @post.save!
          flash[:notice] = "スポット登録完了"
          redirect_to  root_path
      else
          render 'new'
      end
    end

    def posts_params
        params.require(:spot).permit(
        :name, 
        :info, 
        :access, 
        :regular_holiday,
        :address, 
        :public_link, 
        :user_id, 
        :weekday_open_time, 
        :weekday_close_time, 
        :weekend_open_time, 
        :weekend_close_time, 
        :fee, 
        :spot_category_id)
    end
end
