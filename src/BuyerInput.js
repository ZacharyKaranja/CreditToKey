import React, { useState } from 'react';

function BuyerInput({ onFormSubmit }) {
  const [formData, setFormData] = useState({
    carPayment: '',
    studentLoanPayment: '',
    mortgagePayment: '',
    creditScore: '',
    grossIncome: '',
    creditCardPayment: '',
    appraisedVal: '',
    downPaymentAmt: '',
  });

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setFormData({ ...formData, [name]: value });
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    onFormSubmit(formData);
  };

  return (
    <form onSubmit={handleSubmit}>
      <h1 class = "title">Credit to Key</h1>
      <br></br>
      <label class = "label">
        Monthly Car Payment:
        <input
          type="number"
          name="carPayment"
          value={formData.carPayment}
          onChange={handleInputChange}
        />
      </label>
      <br />
      <label class = "label">
        Student Loan Payment:
        <input
          type="number"
          name="studentLoanPayment"
          value={formData.studentLoanPayment}
          onChange={handleInputChange}
        />
      </label>
      <br />
      <label class = "label">
        Estimated Monthly Mortgage Payment:
        <input
          type="number"
          name="mortgagePayment"
          value={formData.mortgagePayment}
          onChange={handleInputChange}
        />
      </label>
      <br />
      <label class = "label">
        Credit Score:
        <input
          type="number"
          name="creditScore"
          value={formData.creditScore}
          onChange={handleInputChange}
        />
      </label>
      <br />
      <label class = "label">
        Gross Monthly Income:
        <input
          type="number"
          name="grossIncome"
          value={formData.grossIncome}
          onChange={handleInputChange}
        />
      </label>
      <br />
      <label class = "label">
        Monthly Credit Card Payment:
        <input
          type="number"
          name="creditCardPayment"
          value={formData.creditCardPayment}
          onChange={handleInputChange}
        />
      </label>
      <br />
      <label class = "label">
        Home Appraised Value:
        <input
          type="number"
          name="appraisedVal"
          value={formData.appraisedVal}
          onChange={handleInputChange}
        />
      </label>
      <br />
      <label class = "label">
        Down Payment Amount:
        <input
          type="number"
          name="downPaymentAmt"
          value={formData.downPaymentAmt}
          onChange={handleInputChange}
        />
      </label>
      <br />
      <button class = "button" type= "submit">Check Eligibility</button>
    </form>
  );
}

export default BuyerInput;