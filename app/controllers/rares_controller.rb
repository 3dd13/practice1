class RaresController < ApplicationController
   before_action :get_rare, only: [ :update, :destroy ]
   respond_to :json

  def index
    @rares = params[:id] ? Rare.where('id in (?)', params[:id].split(",")) : Rare.all

    #if params[:id]
    #  @rares = Rare.where('id in (?)', params[:id].split(","))
    #else
    #  @rares = Rare.all
    #end

    # render json: @rares

  end

  def create
    rare = Rare.new rare_params

    if rare.save
      head :created, location: rare_url(rare)
    else
      head :unprocessable_entity
    end
  end

  def update
    head @rare.update(rare_params) ? :reset_content : :unprocessable_entity

    #$.ajax('/api/buses/14', {type: "PATCH", contentType: 'application/json', data: JSON.stringify({bus: {name: "new bus4 is now bus10"}}), success: function(x) {console.log(x);}});
#  def update
#    rare = Rare.where('id=?', params[:id]).take

 #   if rare
 #     if rare.update(user_params)
 #       head :reset_content
 #     else
 #       head :unprocessable_entity
 #     end
 #   else
 #     head :not_found
 #   end
 # end


  end

  def destroy
    head @rare.destroy ? :no_content : :unprocessable_entity
  end

  private

  def get_rare
    head :not_found unless @rare = Rare.where('id = ?', params[:id]).take
  end

  def rare_params
    params.require(:rare).permit(:rare_name, :rare_family, :longitude, :latitude)
  end
end
