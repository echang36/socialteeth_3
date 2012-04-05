class AdsController < ApplicationController
  
  before_filter :authenticate_user!, :except=>[:show, :index]
  load_and_authorize_resource
  
  # GET /ads
  # GET /ads.json
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ads }
    end
  end
  
  

  # GET /ads/1
  # GET /ads/1.json
  def show

	@ad_contributions = Contribution.where(ad_id: @ad.id)
	@raised=0
	@ad_contributions.each {|a| @raised += a.amount}
		
	
	OEmbed::Providers.register_all
	@res=OEmbed::Providers.get(@ad.link, {:maxwidth => 500})
    
	respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ad }
    end
	
  end

  
  
  # GET /ads/new
  # GET /ads/new.json
  def new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ad }
    end
  end
  
  
  
  # POST /ads
  # POST /ads.json
  def create
    
	@ad=current_user.ads.build(params[:ad])
	
    respond_to do |format|
      if @ad.save
        format.html { redirect_to @ad, notice: 'Ad was successfully created.' }
        format.json { render json: @ad, status: :created, location: @ad }
      else
        format.html { render action: "new" }
        format.json { render json: @ad.errors, status: :unprocessable_entity }
      end
    end
  end
  
  
  
  
  # GET /ads/1/edit
  def edit
  end


  # PUT /ads/1
  # PUT /ads/1.json
  def update

	respond_to do |format|
	    if @ad.update_attributes(params[:ad])
			format.html { redirect_to @ad, notice: 'Ad was successfully updated.' }
			format.json { head :ok }
		 else
			format.html { render action: "edit" }
			format.json { render json: @ad.errors, status: :unprocessable_entity }
		 end
	end

  end
  
  
  

  # DELETE /ads/1
  # DELETE /ads/1.json
  def destroy
	
    @ad.destroy

    respond_to do |format|
      format.html { redirect_to ads_url }
      format.json { head :ok }
    end
  end
  
  

end
