import React from 'react'
import PropTypes from 'prop-types'
import { TabContent, TabPane, Nav, NavItem, NavLink, Card, Button, CardTitle, CardText, Row, Col } from 'reactstrap';
import classnames from 'classnames';

class CustomerForm extends React.Component {
  constructor(props){
    super(props)
    this.state = {
      customer: this.props.customer,
      activeTab: '1',
      provinceOptions: [
        { value: 'ON', label: 'Ontario' },
        { value: 'QC', label: 'Quebec' },
        { value: 'BC', label: 'British Columbia' },
        { value: 'AB', label: 'Alberta' },
        { value: 'MB', label: 'Manitoba' },
        { value: 'SK', label: 'Saskatachewan' },
        { value: 'NS', label: 'Nova Scotia' },
        { value: 'NB', label: 'New Brunswick' },
        { value: 'PE', label: 'Prince Edward Island' },
        { value: 'NL', label: 'Newfoundlnd & Labrador' },
        { value: 'NT', label: 'Northwest Territories' },
        { value: 'YT', label: 'Yukon' },
        { value: 'NU', label: 'Nunavut' }
      ],
      countryOptions: [
        { value: 'Canada', label: 'Canada' },
        { value: 'US', label: 'US' },
      ]
    }
  }

  toggleTab(tab){
    this.setState({
      ...this.state,
      activeTab: tab
    })
  }

  valueChange(e){
    this.setState({
      ...this.state,
      customer: {
        ...this.state.customer,
        [e.target.name]: e.target.value
      }
    })
  }

  onSelect(e, customerKey){
    this.setState({
      ...this.state,
      customer: {
        ...this.state.customer,
        [customerKey]: e.target.value
      }
    })
    console.log(this.state.customer)
  }

  sameBillingAddress(){
    
  }
  render () {
    return (
      <div className='customer-form'>
        {this.props.newForm
          ? <h5>Add new Customer</h5>
          : <h5>Edit Customer</h5>
        }
        <form onSubmit={(e) => this.props.onSubmit(e, this.state.customer)} className='form'>
          <div className='form-row'>
            <div className='form-group'>
              <label className='mb-0'>Name</label>
              <input
                className='form-control form-control-sm'
                value={this.state.customer.name}
                name='name'
                placeholder='Name'
                onChange={ e => this.valueChange(e) }
              />
            </div>
            <div className='form-group col-sm-6'>
              <label className='mb-0'>Email</label>
              <input
                className='form-control form-control-sm'
                value={this.state.customer.email}
                name='email'
                placeholder='Email'
                onChange={ e => this.valueChange(e) }
              />
            </div>
          </div>
          <Nav tabs>
            <NavItem>
              <NavLink
                className={classnames({active: this.state.activeTab === 'shipping'})}
                onClick={() => this.toggleTab('1')}
                >
                  Billing Address
                </NavLink>
            </NavItem>
            <NavItem>
              <NavLink
                className={classnames({active: this.state.activeTab === 'shipping'})}
                onClick={() => this.toggleTab('2')}
                >
                  Shipping Address
                </NavLink>
            </NavItem>
          </Nav>
          <TabContent activeTab={this.state.activeTab}>
            <TabPane tabId='1'>
              <div className='form-group mb-1'>
                <label className='mb-0'>Address</label>
                <input
                  className='form-control form-control-sm mb-1'
                  value={this.state.customer.billing_address_line_1}
                  name='billing_address_line_1'
                  placeholder='Address Line 1'
                  onChange={ e => this.valueChange(e) }
                />
                <input
                  className='form-control form-control-sm'
                  value={this.state.customer.billing_address_line_2}
                  name='billing_address_line_2'
                  placeholder='Address Line 2'
                  onChange={ e => this.valueChange(e) }
                />
              </div>
              <div className='form-row'>
                <div className='form-group col-sm-6'>
                  <label className='mb-0'>City</label>
                  <input
                    className='form-control form-control-sm'
                    value={this.state.customer.billing_city}
                    name='billing_city'
                    placeholder='City'
                    onChange={ e => this.valueChange(e) }
                  />
                </div>
                <div className='form-group col-sm-6'>
                  <label className='mb-0'>Zip</label>
                  <input
                    className='form-control form-control-sm'
                    value={this.state.customer.billing_zipcode}
                    name='billing_zipcode'
                    placeholder='Zipcode'
                    onChange={ e => this.valueChange(e) }
                  />
                </div>
              </div>
              <div className='form-row'>
                <div className='form-group col-sm-6'>
                  <label className='mb-0'>State</label>
                  <select
                    className='form-control form-control-sm'
                    value={this.state.customer.billing_province}
                    onChange={ e => this.onSelect(e, 'billing_province') }>
                    {this.state.provinceOptions.map((province, index) => <option value={province.value} key={index}>{province.label}</option>)}
                  </select>
                </div>
                <div className='form-group col-sm-6'>
                  <label className='mb-0'>Country</label>
                  <select
                    className='form-control form-control-sm'
                    value={this.state.customer.billing_country}
                    onChange={ e => this.onSelect(e, 'billing_country') }>
                    {this.state.countryOptions.map((country, index) => <option value={country.value} key={index}>{country.label}</option>)}
                  </select>
                </div>
              </div>
            </TabPane>
            <TabPane tabId='2'>
              <div className='form-group mb-1'>
                <label className='mb-0'>Address</label>
                <input
                  className='form-control form-control-sm mb-1'
                  value={this.state.customer.shipping_address_line_1}
                  name='shipping_address_line_1'
                  placeholder='Address Line 1'
                  onChange={ e => this.valueChange(e) }
                />
                <input
                  className='form-control form-control-sm'
                  value={this.state.customer.shipping_address_line_2}
                  name='shipping_address_line_2'
                  placeholder='Address Line 2'
                  onChange={ e => this.valueChange(e) }
                />
              </div>
              <div className='form-row'>
                <div className='form-group col-sm-6'>
                  <label className='mb-0'>City</label>
                  <input
                    className='form-control form-control-sm'
                    value={this.state.customer.shipping_city}
                    name='shipping_city'
                    placeholder='City'
                    onChange={ e => this.valueChange(e) }
                  />
                </div>
                <div className='form-group col-sm-6'>
                  <label className='mb-0'>Zip</label>
                  <input
                    className='form-control form-control-sm'
                    value={this.state.customer.shipping_zipcode}
                    name='shipping_zipcode'
                    placeholder='Zipcode'
                    onChange={ e => this.valueChange(e) }
                  />
                </div>
              </div>
              <div className='form-row'>
                <div className='form-group col-sm-6'>
                  <label className='mb-0'>State</label>
                  <select
                    className='form-control form-control-sm'
                    value={this.state.customer.shipping_province}
                    onChange={ e => this.onSelect(e, 'shipping_province') }>
                    {this.state.provinceOptions.map((province, index) => <option value={province.value} key={index}>{province.label}</option>)}
                  </select>
                </div>
                <div className='form-group col-sm-6'>
                  <label className='mb-0'>Country</label>
                  <select
                    className='form-control form-control-sm'
                    value={this.state.customer.shipping_country}
                    onChange={ e => this.onSelect(e, 'shipping_country') }>
                    {this.state.countryOptions.map((country, index) => <option value={country.value} key={index}>{country.label}</option>)}
                  </select>
                </div>
              </div>
            </TabPane>
          </TabContent>
          
          <hr/>
          <div className='form-row'>
            <div className='form-group col-sm-6'>
              <label className='mb-0'>Phone</label>  
              <input
                className='form-control form-control-sm'
                value={this.state.customer.phone}
                name='phone'
                placeholder='Phone'
                onChange={ e => this.valueChange(e) }
              />
            </div>
            <div className='form-group col-sm-6'>
              <label className='mb-0'>Cell Phone</label>
              <input
                className='form-control form-control-sm'
                value={this.state.customer.cell_phone}
                name='cell_phone'
                placeholder='Cell Phone'
                onChange={ e => this.valueChange(e) }
              />
            </div>
          </div>
          <div className='form-row'>
            <div className='form-group col-sm-6'>
              <label className='mb-0'>Fax</label>
              <input
                className='form-control form-control-sm'
                value={this.state.customer.fax}
                name='fax'
                placeholder='Fax'
                onChange={ e => this.valueChange(e) }
              />
            </div>
            <div className='form-group'>
              <label className='mb-0'>Website</label>
              <input
                className='form-control form-control-sm'
                value={this.state.customer.website}
                name='website'
                placeholder='Website'
                onChange={ e => this.valueChange(e) }
              />
            </div>
          </div>

          <div className='form-row'>
            <div className='form-group col-sm-4'>
              <label>Contact</label>
              <input
                className='form-control form-control-sm'
                value={this.state.customer.contact}
                name='contact'
                placeholder='Contact'
                onChange={ e => this.valueChange(e) }
              />
            </div>
            <div className='form-group col-sm-8'>
              <label>Notes</label>
              <input
                className='form-control form-control-sm'
                value={this.state.customer.notes}
                name='notes'
                placeholder='Notes'
                onChange={ e => this.valueChange(e) }
              />
            </div>
          </div>
          <div className='form-row'>
            <div className='form-group col-sm-6'>
              <label>Invoice Transmit Method</label>
              <input
                className='form-control form-control-sm'
                value={this.state.customer.invoice_transmit_method}
                name='invoice_transmit_method'
                placeholder='Invoice Transmit Method'
                onChange={ e => this.valueChange(e) }
              />
            </div>
            <div className='form-group col-sm-6'>
              <label>Proof of Delivery</label>
              <input
                className='form-control form-control-sm'
                value={this.state.customer.proof_of_delivery}
                name='proof_of_delivery'
                placeholder='Proof of Delivery'
                onChange={ e => this.valueChange(e) }
              />
            </div>
          </div>
          
          <div className='form-row'>
            <div className='form-group col-sm-4'>
              <label>Terms</label>
              <input
                className='form-control form-control-sm'
                value={this.state.customer.terms}
                name='terms'
                placeholder='Terms'
                onChange={ e => this.valueChange(e) }
              />
            </div>
            <div className='form-group col-sm-4'>
              <label>Credit</label>
              <input
                className='form-control form-control-sm'
                value={this.state.customer.credit}
                name='credit'
                placeholder='Credit'
                onChange={ e => this.valueChange(e) }
              />
            </div>
            <div className='form-group col-sm-4'>
              <label>Quick Pay</label>
              <input
                className='form-control form-control-sm'
                value={this.state.customer.quick_pay}
                name='quick_pay'
                placeholder='Quick Pay'
                onChange={ e => this.valueChange(e) }
              />
            </div>
          </div>
          <div className='form-group'>
            <input
              className='btn btn-primary btn-sm'
              value={this.state.customer.submit}
              type='submit'
              value='Submit'
            />
            <button
              className='ml-1 btn btn-sm btn-secondary'
              onClick={() => this.props.onCancel()}
              >
              Cancel
            </button>
          </div>
        </form>
      </div>
    )
  }
}

CustomerForm.defaultProps = {
  customer: {
    name: '',
    billing_address_line_1: '',
    billing_address_line_2: '',
    billing_city: '',
    billing_province: '',
    billing_country: '',
    billing_zipcode: '',
    phone: '',
    cell: '',
    fax: '',
    contact: '',
    terms: '',
    credit: '',
    quick_pay: '',
    email: '',
    website: '',
    notes: '',
    invoice_transmit_method: '',
    proof_of_devlivery: '',
    shipping_address_line_1: '',
    shipping_address_line_2: '',
    shipping_city: '',
    shipping_province: '',
    shipping_country: '',
    shipping_zipcode: ''
  }
}

CustomerForm.propTypes = {
  customer: PropTypes.object,
  onSubmit: PropTypes.func.isRequired,
  onCancel: PropTypes.func.isRequired,
  newForm: PropTypes.bool.isRequired
}

export default CustomerForm