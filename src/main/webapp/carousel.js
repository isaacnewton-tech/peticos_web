$(document).ready(function(){
    $('.carousel').slick({
        infinite: false,
        dots: true,
        speed: 1000,
        variableWidth: false,
        centerMode: true,
        autoplay: true,
        autoplaySpeed: 3000,
        slidesToShow: 1,
        adaptiveHeight: true,
        arrows: true
    });
});