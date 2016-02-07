class TagsController < ApplicationController
  before_filter :require_login, only: [:destroy]
  
  def show
    @tag = Tag.find(params[:id])
  end

  def index
    @tags = Tag.all
  end

  def destroy
    @tag = Tag.find(params[:id]).destroy

    flash.notice = "Article '#{@tag.name}' removed!"

    redirect_to tags_path(@tag)
  end
end
