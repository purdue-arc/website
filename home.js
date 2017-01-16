function sponsors(){
	$("#Sponsors").click(function(){
			$("#contact").hide()
			$("#facebook").hide()
			$("#about").hide()
			$("#sponsor_logos").show()
            $('html, body').animate({
                    scrollTop: $("#sponsor_logos").offset().top
                }, 800);
            });

}

function about(){
	$("#About").click(function(){
		$("#sponsor_logos").show()
		$("#contact").hide()
		$("#facebook").hide()
		$("#about").show()
	})
}

function contact(){
	$("#Contact").click(function(){
		$("#sponsor_logos").show()
		$("#facebook").hide()
		$("#about").hide()
		$("#contact").show()
	})
}


function news(){
	$("#News").click(function(){
		$("#sponsor_logos").hide()
		$("#about").hide()
		$("#contact").hide()
		$("#facebook").show()
	})
}