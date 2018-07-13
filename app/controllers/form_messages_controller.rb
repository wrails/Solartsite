class FormMessagesController < ApplicationController
  before_action :set_form_message, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:new, :create]
 
  def index
    if current_user && current_user.admin == false     
      redirect_to pages_unauthorised_path
    else
      @form_messages = FormMessage.all       
    end    
  end

  # GET /form_messages/1
  # GET /form_messages/1.json
  def show
  end

  # GET /form_messages/new
  def new
     if current_user && current_user.admin == false     
      redirect_to pages_unauthorised_path
    else
    @form_message = FormMessage.new
     end   
  end

  # GET /form_messages/1/edit
  def edit
  end

  # POST /form_messages
  # POST /form_messages.json
 def create
    @form_message = FormMessage.new(form_message_params)
    respond_to do |format|
      if @form_message.save
        ContactQueryMailer.new_contact_query(@form_message).deliver_now
        format.html { redirect_to root_path, notice: 'Thanks for contacting us. We’ll get back to you in the next 12 hours' }
        format.json { render :show, status: :created, location: @form_message }
      else
        format.html { render :new }
        format.json { render json: @form_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /form_messages/1
  # PATCH/PUT /form_messages/1.json
  def update
    respond_to do |format|
      if @form_message.update(form_message_params)
        format.html { redirect_to @form_message, notice: 'Form message was successfully updated.' }
        format.json { render :show, status: :ok, location: @form_message }
      else
        format.html { render :edit }
        format.json { render json: @form_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /form_messages/1
  # DELETE /form_messages/1.json
  def destroy
    @form_message.destroy
    respond_to do |format|
      format.html { redirect_to form_messages_url, notice: 'Form message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_form_message
      @form_message = FormMessage.find(params[:id])
    end

 #   def admin?
#       self.admin == true
#    end
#
    # Never trust parameters from the scary internet, only allow the white list through.
    def form_message_params
      params.require(:form_message).permit(:name, :email, :company, :subject, :phone, :body, :teleno)
    end
end
