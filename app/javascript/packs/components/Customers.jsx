import React from 'react'
import ReactDOM from 'react-dom'
import CustomerList from './CustomerList'
import CustomerForm from './CustomerForm'
import CustomerInfo from './CustomerInfo'

class Customers extends React.Component {
  constructor(props){
    super(props)
    this.state = {
      customers: this.props.customers,
      customerIsSelected: false,
      showCustomerDetails: true,
      showNewCustomerForm: false,
      showEditCustomerForm: false,
      selectedCustomer: {},
      addingNewCustomer: false
    }
  }

  addCustomer(e, data){
    e.preventDefault()
    let newCustomerData = {
      customer: data
    }
    fetch('/customers.json', {
      method: 'POST',
      headers: {'Content-Type': 'application/json'},
      body: JSON.stringify(newCustomerData)
    }).then(response => response.json())
    .then(json => {
      this.setState({
        ...this.state,
        customers: [
          ...this.state.customers, json
        ],
        selectedCustomer: json
      })
      this.showCustomerDetails()
    }).catch(error => console.log(error))
  }
  updateCustomer(e, data){
    e.preventDefault()
    let customerData = {
      customer: data
    }
    fetch(`/customers/${data.id}.json`, {
      method: 'PUT',
      headers: {'Content-Type': 'application/json'},
      body: JSON.stringify(customerData)
    }).then( response => response.json())
    .then(json => {
      let newState = this.state
      newState.customers = newState.customers.filter(customer => customer.id !== json.id)
      newState.customers = [...newState.customers, json]
      newState.selectedCustomer = json
      this.setState({ newState })
      this.showCustomerDetails()
    })
    .catch(error => console.log(error))
    
  }
  deleteCustomer(id){
    fetch(`/customers/${id}.json`, {
      method: 'DELETE',
      headers: {'Content-Type': 'application/json'}
    }).then(response => {
      this.setState({
        ...this.state,
        customers: this.state.customers.filter(customer => customer.id !== id)
      })
    }).catch(error => console.log(error))
  }
  selectCustomer(customer) {
    this.setState({
      ...this.state,
      selectedCustomer: customer,
      customerIsSelected: true,
      showEditCustomerForm: false,
      showNewCustomerForm: false,
      showCustomerDetails: true
    })
  }
  showEditCustomerForm(){
    this.setState({
      ...this.state,
      showEditCustomerForm: true,
      showNewCustomerForm: false,
      showCustomerDetails: false
    })
  }
  showNewCustomerForm(){
    this.setState({
      ...this.state,
      customerIsSelected: false,
      selectedCustomer: {},
      showEditCustomerForm: false,
      showNewCustomerForm: true,
      showCustomerDetails: false
    })
  }
  showCustomerDetails(){
    this.setState({
      ...this.state,
      showEditCustomerForm: false,
      showNewCustomerForm: false,
      showCustomerDetails: true
    })
  }
  render () {
    const {
      customerIsSelected,
      selectedCustomer,
      customers,
      showCustomerDetails,
      showNewCustomerForm,
      showEditCustomerForm
     } = this.state
    return (
      <div className='customers' style={{padding: 10}}>
        <div className='row'>
          <div className='col-sm-8'>
            <h4>Existing Customers</h4>
            <div className='align-self-end'>
              <button className='btn btn-sm btn-primary' onClick={() => this.showNewCustomerForm()}>Add New</button>
            </div>
            
            <CustomerList
              customers={customers}
              handleSelect={this.selectCustomer.bind(this)}
            />
          </div>
          <div className='col-sm-4'>
            {showCustomerDetails &&
              <CustomerInfo
                customer={selectedCustomer}
                handleDelete={this.deleteCustomer.bind(this)}
                showEditCustomerForm={this.showEditCustomerForm.bind(this)}
              />
            }
            {!customerIsSelected && showNewCustomerForm &&
              <CustomerForm
                newForm={showNewCustomerForm}
                onSubmit={this.addCustomer.bind(this)}
                onCancel={this.showCustomerDetails.bind(this)}
              />
            }
            {customerIsSelected && showEditCustomerForm &&
              <CustomerForm
                newForm={showNewCustomerForm}
                customer={selectedCustomer}
                onSubmit={this.updateCustomer.bind(this)}
                onCancel={this.showCustomerDetails.bind(this)}
              />
            }
          </div>
        </div>
      </div>
    )
  }
}

document.addEventListener('DOMContentLoaded', () => {
  const node = document.getElementById('customers_data')
  const data = JSON.parse(node.getAttribute('data'))
  ReactDOM.render(
    <Customers customers={data}/>,
    document.body.appendChild(document.createElement('div')),
  )
})
