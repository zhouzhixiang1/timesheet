$(function(){
	$(".delete").click(function(){
		var label = $(this).next(":hidden").val();
		var flag = confirm("Sei sicuro di voler cancellare il dipendente " + label + "?");
		if(flag){
			var url = $(this).attr("href");
			
			$("#_form").attr("action", url);
			$("#_method").val("DELETE");
			$("#_form").submit();
		}
		return false;
	});
})


