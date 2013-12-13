
class PanelMembersController < ApplicationController
  # GET /panel_members
  # GET /panel_members.json
  def index
    @panel_members = PanelMember.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @panel_members }
    end
  end

  # GET /panel_members/1
  # GET /panel_members/1.json
  def show
    @panel_member = PanelMember.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @panel_member }
    end
  end

  # GET /panel_members/new
  # GET /panel_members/new.json
  def new
    @panel_member = PanelMember.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @panel_member }
    end
  end

  # GET /panel_members/1/edit
  def edit
    @panel_member = PanelMember.find(params[:id])
  end

  # POST /panel_members
  # POST /panel_members.json
  def create
    @panel_member = PanelMember.new(params[:panel_member])

    respond_to do |format|
      if @panel_member.save
        format.html { redirect_to @panel_member, notice: 'Panel member was successfully created.' }
        format.json { render json: @panel_member, status: :created, location: @panel_member }
      else
        format.html { render action: "new" }
        format.json { render json: @panel_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /panel_members/1
  # PUT /panel_members/1.json
  def update
    @panel_member = PanelMember.find(params[:id])

    respond_to do |format|
      if @panel_member.update_attributes(params[:panel_member])
        format.html { redirect_to @panel_member, notice: 'Panel member was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @panel_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /panel_members/1
  # DELETE /panel_members/1.json
  def destroy
    @panel_member = PanelMember.find(params[:id])
    @panel_member.destroy

    respond_to do |format|
      format.html { redirect_to panel_members_url }
      format.json { head :no_content }
    end
  end
end
