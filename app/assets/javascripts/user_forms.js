$(document).ready(function() {
  // Display login and signup forms
  $('a.nav').on('click', function(event) {
    var goTo = $(this).attr('href');
    event.preventDefault();
      $.get(goTo, function(response) {
        $('.form').remove();
        $('#emptybox').append(response);
      });
    });

  // Validate form response
  $('div#emptybox').on('click', 'input[type=submit]', function(event) {
    var validate = new ValidateForm();
    var errors = validate.getErrors(['email', 'passwordLength']);
    if (errors.length > 0) {
      event.preventDefault();
      displayError(errors);
      }
  });

  // Remove login and signup forms
  $('a.clear').on('click', function(event) {
    event.preventDefault();
    $(this).parent().remove();
  });

  // Validation loop
  function ValidateForm() {
    this.result = [];
    this.getErrors = function(validations) {
      // var validations = ['email', 'passwordLength'];
      for (var i = 0; i < validations.length; i++) {
        error = this[validations[i]]();
        if (error) {
          this.result.push(error)
          }
        }
      return this.result;
    };
  }

  // Validations for signup form
  ValidateForm.prototype = {
    email: function(){
      var email = $('form input[type=email]').val();
      var checkEmail = /.+\@.+\..+/;
      if (!checkEmail.test(email)) {
        return "Must be a valid email address!";
      }
    },
    passwordLength: function(){
      var password = $('form input[type=password]').val();
      if (password.length < 8) {
        return "Password must be at least 8 characters!";
      }
    },
    isNumber: function(){},
    hasContent: function(){}
  };

  // Show errors for validations
  var displayError = function(errors) {
    for (var i = 0; i < errors.length; i++) {
      $('.clear').after(" <span class='error small'>" + errors[i] + "</span>");
      $('.error').fadeOut(4000);
    }
  };
});