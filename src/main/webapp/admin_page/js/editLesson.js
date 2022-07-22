/**
 * 
 */
$(document).ready(function() {
	$('#lessonScoreInput').on('input', function() {
		console.log("test");
		inputValue = $('#lessonScoreInput').val();
		if (inputValue < 0) {
			$('#lessonScoreInput').val("0");
		} else
			if (inputValue > 1000) {
				$('#lessonScoreInput').val("1000");
			}
	})
})
