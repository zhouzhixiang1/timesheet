$(function(){
	$(".delete").click(function(){
		var label = $(this).next(":hidden").val();
		var flag = confirm("sei sicuro di cancellare commessa: " + label + "?");
		if(flag){
			var url = $(this).attr("href");
			
			$("#_form").attr("action", url);
			$("#_method").val("DELETE");
			$("#_form").submit();
		}
		return false;
	});
})