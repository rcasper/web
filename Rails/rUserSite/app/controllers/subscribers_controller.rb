class SubscribersController < ApplicationController
  def show
    @subscriber = Subscriber.find(params[:id])
  end

  def new
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
     flash[:success] = "Subscription successful!"
     redirect_to root_path
    else
      render 'new'
    end
  end

  private
    
    def subscriber_params
      params.require(:subscriber).permit(:name, :email)
    end
end
