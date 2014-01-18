$(document).ready(function() {
	var ready = true;

	/*Link button function*/
	$(".linkbutton").click(function() {
		if(ready == true)
		{
			ready = false;
			if ($(this).next().is(":visible"))
			{
				$(this).next().slideToggle("slow", function(){
					ready = true;
				});
			}
			else
			{
				$("#linkie p").each(function() {
					if ($(this).is(":visible"))
					{
						$(this).slideToggle("slow");
					}
				});
				$(this).next().slideToggle("slow", function(){
					ready = true;
				});
			}
		}
	});

	/*When you click on something of class .link, fade out left content, load left content at the href of the link, and fade in that left content.*/
	$(".link, .mainlink").click(function(event) {
		event.preventDefault();
		var link = $(this);
		$("#linkie p").fadeOut('fast', function() {
			$("#linkie p").load(link.attr("href"), function(response, status, xhr) {
				$("#linkie p").fadeIn('fast');
			});
		});

	});
	
});