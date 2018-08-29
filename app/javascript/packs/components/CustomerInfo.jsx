import React from 'react'
import PropTypes from 'prop-types'

export default class CustomerInfo extends React.Component {
  customerNotSelected = () =>
    <div className='alert alert-info'>
      Select a customer to see details
    </div>

  customerSelected = (customer) =>
    <div className='card'>
      <div className='card-body'>
        <h5 className='card-title'>{customer.name}</h5>
        <h6 className='sub-title'>Email: {customer.email}</h6>
        <button className='btn btn-sm btn-primary' onClick={() => this.props.showEditCustomerForm()}>Edit</button>
        <button className='btn btn-sm btn-danger mx-2' onClick={() => this.props.handleDelete(customer.id)}>Remove</button>
        <p className='text-uppercase mb-0 mt-3'>Billing Address</p>
        <div className='row'>
          <div className='col-3 text-muted'>Street</div>
          <div className='col-9'>{customer.billing_address_line_1}</div>
        </div>
        <div className='row'>
          <div className='col-3'></div>
          <div className='col-9'>{customer.billing_address_line_2}</div>
        </div>
        <div className='row'>
          <div className='col-2 text-muted'>City</div>
          <div className='col-4'>{customer.billing_city}</div>
          <div className='col-3 text-muted'>Province</div>
          <div className='col-3'>{customer.billing_province}</div>
        </div>
        <div className='row'>
          <div className='col-3 text-muted'>Country</div>
          <div className='col-3'>{customer.billing_country}</div>
          <div className='col-3 text-muted'>Zip</div>
          <div className='col-3'>{customer.billing_zipcode}</div>
        </div>
        <hr/> 
        <h6 className='text-uppercase'>Contact</h6>
        <div className='row'>
          <div className='col-3 text-muted'>Phone</div>
          <div className='col-3'>{customer.phone}</div>
          <div className='col-3 text-muted'>Cell</div>
          <div className='col-3'>{customer.cell_phone}</div>
        </div>
        <div className='row'>
          <div className='col-3 text-muted'>Fax</div>
          <div className='col-3'>{customer.fax}</div>
          <div className='col-3 text-muted'>Contact</div>
          <div className='col-3'>{customer.contact}</div>
        </div>
        <div className='row'>
          <div className='col-4 text-muted'>Website</div>
          <div className='col-8'>{customer.website}</div>
        </div>
        <hr/>
        <h6 className='text-uppercase'>OTHER</h6>
        <div className='row'>
          <div className='col-3 text-muted'>Terms</div>
          <div className='col-3'>{customer.terms}</div>
          <div className='col-3 text-muted'>Credits</div>
          <div className='col-3'>{customer.credits}</div>
        </div>
        <div className='row'>
          <div className='col-3 text-muted'>Quick Pay</div>
          <div className='col-3'>{customer.quick_pay}</div>
        </div>
        <div className='row'>
          <div className='col-6 text-muted'>Invoice Transmit Method</div>
          <div className='col-6'>{customer.invoice_transmit_method}</div>
        </div>
        <div className='row'>
          <div className='col-6 text-muted'>Proof of Delivery</div>
          <div className='col-6'>{customer.proof_of_devlivery}</div>
        </div>
        <div className='row'>
          <div className='col-2 text-muted'>Notes</div>
          <div className='col-10'>{customer.notes}</div>
        </div>
        <hr/>
        <h6 className='text-uppercase'>Shipping Address</h6>
        <div className='row'>
          <div className='col-3 text-muted'>Street</div>
          <div className='col-9'>{customer.shipping_address_line_1}</div>
        </div>
        <div className='row'>
          <div className='col-3'></div>
          <div className='col-9'>{customer.shipping_address_line_2}</div>
        </div>
        <div className='row'>
          <div className='col-2 text-muted pr-0'>City</div>
          <div className='col-4 pl-0'>{customer.shipping_city}</div>
          <div className='col-3 text-muted pr-0'>Province</div>
          <div className='col-3'>{customer.shipping_province}</div>
        </div>
        <div className='row'>
          <div className='col-3 text-muted'>Country</div>
          <div className='col-3'>{customer.shipping_country}</div>
          <div className='col-3 text-muted'>Zip</div>
          <div className='col-3'>{customer.shipping_zipcode}</div>
        </div>
      </div>
      
    </div>

  render() {
    const { customer } = this.props
    return (
      <div>
        { Object.keys(customer).length === 0
          ? this.customerNotSelected()
          : this.customerSelected(customer)
        }
      </div>
    )
  }
}

CustomerInfo.propTypes = {
  customer: PropTypes.object,
  showEditCustomerForm: PropTypes.func.isRequired,
  handleDelete: PropTypes.func.isRequired
}