class GroupsController < ApplicationController
  before_action :set_product_group, only: [:show, :edit, :update, :destroy]

  # GET /Groups
  # GET /Groups.json
  def index
    @groups = Group.all
  end

  # GET /Groups/1
  # GET /Groups/1.json
  def show
  end

  # GET /Groups/new
  def new
    @group = Group.new
  end

  # GET /Groups/1/edit
  def edit
  end

  # POST /Groups
  # POST /Groups.json
  def create
    @group = Group.new(product_group_params)

    respond_to do |format|
      if @group.save
        format.html { redirect_to @group, notice: 'Product group was successfully created.' }
        format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /Groups/1
  # PATCH/PUT /Groups/1.json
  def update
    respond_to do |format|
      if @group.update(product_group_params)
        format.html { redirect_to @group, notice: 'Product group was successfully updated.' }
        format.json { render :show, status: :ok, location: @group }
      else
        format.html { render :edit }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Groups/1
  # DELETE /Groups/1.json
  def destroy
    @group.destroy
    respond_to do |format|
      format.html { redirect_to product_groups_url, notice: 'Product group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_group
      @group = Group.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_group_params
      params.require(:group).permit(:name, :description, :onlineViewLabel, :posViewLabel, :posViewLabel, :headerImagePath, :displayIndex, :visibleOnline, :visibleOnPos, :enabled, :deleted, :user_id, :product_category_id)
    end
end
