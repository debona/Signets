class BookmarksController < ApplicationController
  respond_to :json, :html

  before_action :set_bookmark, only: [:show, :edit, :update, :destroy]

  # GET /bookmarks
  # GET /bookmarks.json
  def index
    @bookmarks = Bookmark.all
    respond_with(@bookmarks)
  end

  # GET /bookmarks/1
  # GET /bookmarks/1.json
  def show
    respond_with(@bookmark)
  end

  # GET /bookmarks/new
  def new
    @bookmark = Bookmark.new
    respond_with(@bookmark)
  end

  # GET /bookmarks/1/edit
  def edit
    respond_with(@bookmark)
  end

  # POST /bookmarks
  # POST /bookmarks.json
  def create
    @bookmark = Bookmark.new(bookmark_params)
    saved = @bookmark.save

    respond_with(@bookmark, :status => saved ? :created : :unprocessable_entity) do |format|
      format.html do
        if saved
          redirect_to @bookmark, notice: 'Bookmark was successfully created.'
        else
          render action: :new, status: :unprocessable_entity
        end
      end
    end

  end

  # PATCH/PUT /bookmarks/1
  # PATCH/PUT /bookmarks/1.json
  def update
    respond_to do |format|
      if @bookmark.update(bookmark_params)
        format.html { redirect_to @bookmark, notice: 'Bookmark was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bookmark.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookmarks/1
  # DELETE /bookmarks/1.json
  def destroy
    @bookmark.destroy
    respond_to do |format|
      format.html { redirect_to bookmarks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookmark
      @bookmark = Bookmark.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bookmark_params
      params.require(:bookmark).permit(:title, :url)
    end
end
