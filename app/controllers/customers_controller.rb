class CustomersController < ApplicationController
  before_action :find_customer, only: [:update, :destroy]
  
  def index 
    @customers = Customer.all
  end

  def create
    @customer = Customer.create(customer_params)
    if @customer.save
      render json: @customer
    else
      render json: { errors: @customer.errors }
    end
  end

  def update
    if @customer.update(customer_params)
      render json: @customer
    else
      render json: { errors: @customer.errors }
    end
  end

  def destroy
    if @customer.destroy
      head :no_content
    else
      render json: { errors: @customer.errors }
    end
  end

  private 

  def customer_params
    params.require(:customer).permit(
      :name,
      :billing_address_line_1,
      :billing_address_line_2,
      :billing_city,
      :billing_province,
      :billing_country,
      :billing_zipcode,
      :phone,
      :cell_phone,
      :fax,
      :contact,
      :terms,
      :credit,
      :quick_pay,
      :email,
      :website,
      :notes,
      :invoice_transmit_method,
      :proof_of_delivery,
      :shipping_address_line_1,
      :shipping_address_line_2,
      :shipping_city,
      :shipping_province,
      :shipping_country,
      :shipping_zipcode,
    )
  end

  def find_customer
    @customer = Customer.find(params[:id])
  end
end