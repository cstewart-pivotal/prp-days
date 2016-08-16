function banner_fade() {
    var window_top = $(window).scrollTop();
    var banner_top = $('#sticky-anchor').offset().top;
    var scaleAmt = 1.0 + (window_top / 1000);
    if (window_top > banner_top) {
        $('#sticky').addClass('stick');
        $('#sticky-anchor').height($('#sticky').outerHeight());
        $(".stick").css({
            "opacity": 1 - $(window).scrollTop() / 250,
            "transform": "scale("+scaleAmt+")"
          });
    }
    else {
        $("#sticky.stick").css("opacity", 1);
        $('#sticky').removeClass('stick');
        $('#sticky-anchor').height(0);
    }
}
$(function(){
  $(window).scroll(banner_fade);
  banner_fade();
});
