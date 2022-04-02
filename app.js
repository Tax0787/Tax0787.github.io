$(function() {
	var seconds = 10;
	function counting() {
			$(".seconds").html(seconds--);
		setTimeout(counting, 1000);
	}
	counting();
});