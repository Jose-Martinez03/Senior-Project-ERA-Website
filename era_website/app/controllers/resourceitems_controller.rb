class ResourceitemsController < ApplicationController

def create
    @disasterevent = Disasterevent.find(params[:disasterevent_id])
    @resourceitem = @disasterevent.resourceitems.create(resourceitem_params)
    redirect_to disasterevent_path(@disasterevent)
  end
  
  def destroy
    @disasterevent = Disasterevent.find(params[:disasterevent_id])
    @resourceitem = @disasterevent.resourceitems.find(params[:id])
    @resourceitem.destroy
    redirect_to disasterevent_path(@disasterevent)
  end  
  
  private
    def resourceitem_params
      params.require(:resourceitem).permit(:resourcename, :resourcedescription, :quantity, :city, :madeby, :askedfor, :currstatus)
    end
end

