$(document).ready(function (){
    validate();
    $('#contact_name, #contact_phone, #contact_email').change(validate);
});

function validate(){
    if ($('#contact_name').val().length   >   0   &&
        $('#contact_brand_name').val().length  >   0   &&
        $('#contact_phone').val().length  >   0   &&
        $('#contact_email').val().length    >   0) {
        $("#submit-contact").prop("disabled", false);
    }
    else {
        $("#submit-contact").prop("disabled", true);
    }
}




// (function() {

//   var empty = false;
//     if ($('#contact_name').val() == '' || $('#contact_phone').val() == '' || $('#contact_email').val() == '') {
//         empty = true;
//     }

//   if (empty) {
//       $('#submit-contact').attr('disabled', 'disabled'); // updated according to http://stackoverflow.com/questions/7637790/how-to-remove-disabled-attribute-with-jquery-ie
//   } else {
//       $('#submit-contact').removeAttr('disabled'); // updated according to http://stackoverflow.com/questions/7637790/how-to-remove-disabled-attribute-with-jquery-ie
//   }

//  });
