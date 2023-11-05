import React, { useState, useEffect } from 'react';
import BuyerInput from './BuyerInput';
import BuyerOutput from './BuyerOutput';
import './style.css'

function App() {
  const [buyerData, setBuyerData] = useState({});
  const [eligibility, setEligibility] = useState(null);
  const [recommendation, setRecommendation] = useState(null);
  const [recommendationLink, setRecommendationLink] = useState(null);

  useEffect(() => {

    const calculateEligibility = () => {

      const ltv = calculateLTV(buyerData);
      const dti = calculateDTI(buyerData);
      const fedti = calculateFEDTI(buyerData);
  
      let result = '';
      let rec = '';
      let recLink = '';
  
      if (buyerData.creditScore < 640) {
        result = 'Not eligible (credit score too low)';
        rec = 'Read your credit report';
        recLink = "https://www.investopedia.com/how-to-improve-your-credit-score-4590097";
      } else if (ltv > 95) {
        result = 'Not eligible (LTV too high)';
        rec = 'Save more for your downpayment or look for a cheaper house';
        recLink = "https://www.investopedia.com/articles/personal-finance/110515/5-unusual-ways-come-home-down-payment.asp";
      } else if (dti > 43) {
        result = 'Not eligible (DTI too high)';
        rec = 'Pay off your loans or reduce your credit card spending';
        recLink = "https://www.consumerfinance.gov/about-us/blog/how-reduce-your-debt/";
      } else if (fedti > 28) {
        result = 'Not eligible (FEDTI too high)';
        rec = 'Look for a home with a lower monthly mortgage';
        recLink = "https://www.cnbc.com/select/how-to-lower-mortgage-payment/";
      } else {
        result = 'Eligible to buy a home'
      }
      setRecommendation(rec);
      setRecommendationLink(recLink);
      setEligibility(result);
    };
    calculateEligibility();
  }, [buyerData]);

const calculateLTV = (buyerData) => {
  const principal = buyerData.appraisedVal - buyerData.downPaymentAmt;
  const ltv = (principal / buyerData.appraisedVal) * 100;
  return ltv;
};

const calculateDTI = (buyerData) => {
  const totDebt =
    parseInt(buyerData.carPayment) +
    parseInt(buyerData.creditCardPayment) +
    parseInt(buyerData.studentLoanPayment) +
    parseInt(buyerData.mortgagePayment);

  const dti = (totDebt / buyerData.grossIncome) * 100;
  return dti;
};

const calculateFEDTI = (buyerData) => {
  const fedti = (buyerData.mortgagePayment / buyerData.grossIncome) * 100;
  return fedti;
};

  return (
    <div>
      <BuyerInput onFormSubmit={(data) => setBuyerData(data)} />
      <BuyerOutput eligibility={eligibility} recommendation = {recommendation} recommendationLink = {recommendationLink}/>
    </div>
  );
}

export default App;