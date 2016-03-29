class CustomersController < ApplicationController
  before_filter :intercept_html_requests
  layout false
  before_action :set_customer, only: [:show, :edit, :update, :destroy]


   def index
     @customers = Customer.all
     render json: @customers
   end


   def show
     render json: @customer
   end

   def create
     @customer = Customer.new(customer_params)

     if @customer.save
       render json: @customer, status: :created
     else
       render json: @customer.errors, status: :unprocessable_entity
     end
   end


   def update
     if @customer.update(customer_params)
       head :no_content
     else
       render json: @customer.errors, status: :unprocessable_entity
     end
   end

   def destroy
     @customer.destroy
     head :no_content
   end

   private

     def set_customer
       @customer = Customer.find(params[:id])
     end

     def customer_params
       params.require(:customer).permit(:name, :contact_officer, :date_created)
     end

   def intercept_html_requests
     redirect_to('/') if request.format == Mime::HTML
   end
 end
