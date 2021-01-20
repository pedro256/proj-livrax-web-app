$(document).ready(function(){
    if((window.screen.availHeight < 1100) &&(window.screen.availWidth < 1100)){
        $('.items-slick-carousel-slider').slick({
            infinite: true,
            slidesToShow: 3,
            slidesToScroll: 2
        });
    }else{
        $('.items-slick-carousel-slider').slick({
            infinite: true,
            slidesToShow: 7,
            slidesToScroll: 3
        });
    }
    
$('#carroselPrincipal').carousel({
    interval: 3000,
})
    
});


 
 $(document).ready(function() {
    $('#list').click(function(event){event.preventDefault();$('#products .item').addClass('list-group-item');});
    $('#grid').click(function(event){event.preventDefault();$('#products .item').removeClass('list-group-item');$('#products .item').addClass('grid-group-item');});
});



$(".custom-file-input").on("change", function() {
    var fileName = $(this).val().split("\\").pop();
    $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
});