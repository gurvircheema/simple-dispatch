import React from 'react'
import PropTypes from 'prop-types'

const CustomerList = ({customers, handleSelect}) => 
  <table className='table table-sm' style={{fontSize: 14}}>
    <thead>
      <tr>
        <th>Name</th>
        <th>Address</th>
        <th>City</th>
        <th>Province</th>
        <th>Country</th>
        <th>Phone</th>
        <th>Fax</th>
        <th>Email</th>
      </tr>
    </thead>
    <tbody>
      {customers.map((customer, index) => 
        <tr key={index} onClick={() => handleSelect(customer)}>
          <td>{customer.name}</td>
          <td>{customer.billing_address_line_1}</td>
          <td>{customer.billing_city}</td>
          <td>{customer.billing_province}</td>
          <td>{customer.billing_country}</td>
          <td>{customer.phone}</td>
          <td>{customer.fax}</td>
          <td>{customer.email}</td>
          <td></td>
        </tr>
      )}
    </tbody>
  </table>

CustomerList.propTypes = {
  customers: PropTypes.array.isRequired,
  handleSelect: PropTypes.func.isRequired
}

export default CustomerList