class Admin::ServicesController < ApplicationController

#----------index
def index
  @service = Service.all
end
#----------show de service---------
def show
 @service = Service.find(params[:id])
end
#----------new and create -----
def new
   @service = Service.new 
end
def create
   @service = Service.new(service_params)
   if @service.save
    redirect_to admin_service_path(@service)
  else
    render :new
  end
end
#---------edit serevices--------
def edit
  @service = Service.find(params[:id])
end
def update
  @service = Service.find(params[:id])
  if @service.update(service_params)
    redirect_to admin_service_path(@service)
  else
    render :edit
  end
end
#---------destroy services
def destroy
  @service = Service.find(params[:id]) 
  @service.destroy

  redirect_to admin_services_path(@service)
end
#------ sirveces params--------
private
def service_params
  params.require(:service).permit(:title, :autor, :description, :imgs)
end
end
