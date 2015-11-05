class EntriesController < ApplicationController

	def index 
    @entries = Entry.all
	end

	def new
		@entry = Entry.new
	end

  def create
    @entry = Entry.create(entry_params)
    redirect_to entries_path
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
end

 private

  def entry_params
    params.require(:entry).permit(:title, :author, :content, :created_at)
  end


