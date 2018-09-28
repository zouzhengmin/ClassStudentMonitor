class MyclassesController < ApplicationController

  def index
    @myclasses = Myclass.all
  end

  def show
    @myclass = Myclass.find(params[:id])
  end

  def new
    @myclass = Myclass.new
  end

  def create
    @myclass = Myclass.new(myclass_params)
    if @myclass.save
      redirect_to myclasses_path
    else
      render :new
    end
  end

  def edit
    @myclass = Myclass.find(params[:id])
  end

  def update
    @myclass = Myclass.find(params[:id])
    @myclass.update(myclass_params)
    if @myclass.save
      redirect_to myclasses_path
    else
      render :edit
    end
  end

  def destroy
    @myclass = Myclass.find(params[:id])
    @myclass.delete
    redirect_to myclasses_path
  end

  private

  def myclass_params
    params.require(:myclass).permit(:name)
  end

end
