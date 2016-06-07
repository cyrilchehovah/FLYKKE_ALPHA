jQuery(function() {
  if ($('.infinite-scrolling').size() > 0) {
    $('.scrollable').on('scroll', function() {
      var more_posts_url;
      // console.log('scroll');
      // console.log($('.pagination .next_page').attr('href'));
      category = $(".category-tabs .active").attr("id").replace("-cat", "");
      more_posts_url = $('#infinite-scrolling-' + category + ' .pagination .next_page').attr('href');
      url = more_posts_url + "&category=" + category;
      console.log(url);
      if (more_posts_url && $('.scrollable').scrollTop() > $(document).height() - $('.scrollable').height() - 60) {
        $('#infinite-scrolling-' + category + ' .pagination').html('<img src="/assets/ajax-loader-blue.gif" alt="Loading..." title="Loading..." />');
        $.getScript(url);
      }
      return
    });
  }
  return
});
