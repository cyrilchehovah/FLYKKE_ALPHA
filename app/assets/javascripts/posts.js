//filling the post category on click
  $(".post-category").on('click', function() {
    $('#post_category, #preview_category').val($(this).text());
    $('.post-category').removeClass('active');
    $(this).addClass('active');
    $("#submit_url").prop('disabled', false);
  });

//----------------------------------------------------------------------------

// if ($("#submit_url").prop('disabled', false)) {
//       $("#submit_post").prop('disabled', false);
//   }

var myDiv = $('.description-limit');
if ($('.description-limit').text().length > 150) {
  myDiv.text(myDiv.text().substring(0,150) + "...")
}

// var myDiv2 = $('#preview-h3');
// if ($('#preview-h3').text().length > 150) {
//   myDiv2.text(myDiv2.text().substring(0,150) + "...")
//   console.log($('#preview-h3').text().length)
// }

