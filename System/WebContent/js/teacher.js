$(function () {
    $("#myCarousel").hover(function () {
        $(".carousel-control").css("display", "block");
    }, function () {
        $(".carousel-control").css("display", "none");
    })

});

$('#myCarousel').carousel({
    interval: 2000//改变轮播图间隔时间
});
