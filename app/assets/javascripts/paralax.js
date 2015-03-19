function backgroundParallax () {
  var $parallaxElem = $('div[data-type="background"]'),
  $window = $(window);
  
  $parallaxElem.each(function() {
    var $bgobj = $(this);

    $window.scroll(function() {

       
      var yPos = -($window.scrollTop() * $bgobj.data('speed'));

      var coords = '10% ' + yPos + 'px';

      $bgobj.css({
        backgroundPosition: coords
      });
    })
  })
  
};

   backgroundParallax();