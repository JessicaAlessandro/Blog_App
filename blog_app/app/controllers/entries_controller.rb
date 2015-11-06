class EntriesController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]
  
	def index 
    @entries = Entry.all
	end

	def new
		@entry = current_user.entries.build
    if @entry.save
    redirect_to entries_path
    else
    redirect_to new_user_registration
    end
	end

  def create
    @entry = current_user.entries.build(entry_params)
    if @entry.save
      redirect_to entries_path
    end
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])
		if @entry.update(entry_params)
			redirect_to entries_path
		else
			render :action => :edit
		end
	end

  def show
    @entry = Entry.find(params[:id])
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    redirect_to entries_path
  end

  private
    def entry_params
      params.require(:entry).permit(:title, :author, :content, :created_at)
    end
end