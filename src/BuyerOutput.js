import React from 'react';

function BuyerOutput({eligibility, recommendation, recommendationLink}) {
  return (
    <div>
      <h2>Eligibility Result</h2>
      <p>{eligibility}</p>
      <p>{recommendation}</p>
      <a href = {recommendationLink}> {recommendationLink} </a>
    </div>
  );
}


export default BuyerOutput;