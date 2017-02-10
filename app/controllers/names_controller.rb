class NamesController < ApplicationController

  before_action :set_params, only: [:show, :edit, :update, :destroy]  

  def index
    @names = Name.all.order("last_name ASC")
  end

  def show
  end

  def new
    @name = Name.new    
  end

  def create
    # Instantiate a new object using form parameters
    @name = Name.new(name_params)
    # Save the object
    if @name.save
      # If save succeeds, redirect to the index aciton ## add flash hash
      #flash[:notice] = "Name created successfully"
      redirect_to(:action => 'index')
     else
      # If save fails, redisplay the form so user can fix problems      
      render('new')
    end
  end

  def update
    respond_to do |format|
      if @name.update(name_params)
        format.html { redirect_to @name, notice: 'Invoice was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @name.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    if @name.destroy
      flash[:success] = "Article has been deleted"
      redirect_to names_path
    end
  end

  private

  def name_params
    params.require(:name).permit(:first_name, :last_name, :middle_initial, 
      :address_1, :address_2, :city, :state_name, :state_abbr, :zip_code, 
      :country, :home_phone, :cell_phone, :email,)
  end

  def set_params
    @name = Name.find(params[:id])
  end

end
