$(document).on('turbolinks:load', function(){
  
  var stripe = Stripe('pk_test_dyqAQ4mcP9uEvElyi5Hs6zIx00Lhoe3DGa');
  var elements = stripe.elements()
  
  var card = elements.create('card');
  
  var form = document.getElementById('checkoutForm');
  var submitBtn = document.getElementById('submit-btn')
  // Add an instance of the card UI component into the `card-element` <div>
  card.mount('#card-element');
    
  card.addEventListener('change', function(event) {
    var displayError = document.getElementById('card-errors');
    if (event.error) {
      displayError.textContent = event.error.message;
    } else {
      displayError.textContent = '';
      
    submitBtn.disabled = false;
    }
});

  // Create a token when the form is submitted.;
  form.addEventListener('submit', function(e) {
    e.preventDefault();
    
    stripe.createToken(card).then(function(result) {
      if (result.error) {
        // Inform the user if there was an error
        var errorElement = document.getElementById('card-errors');
        errorElement.textContent = result.error.message;
      } else {
        // Send the token to your server
        stripeTokenHandler(result.token);
      }
    });
  });

  
  function stripeTokenHandler(token) {
  // Insert the token ID into the form so it gets submitted to the server
  var hiddenInput = document.createElement('input');
      hiddenInput.setAttribute('type', 'hidden');
      hiddenInput.setAttribute('name', 'stripeToken');
      hiddenInput.setAttribute('value', token.id);
      form.appendChild(hiddenInput);


    form.submit();
  }
  
  
  
  
});