
//add dipendente validate
$(document).ready(function() {
	  $("#signupFormAD").validate({
		    rules: {
		    	nomeDipendente: {
			        required: true
			      },
			      passwordDipendente: {
		        required: true
		      }
		    },
		    messages: {
		    	idDipendente:{
			        required:"Scegli ID Dipendente"
			      },
			      nomeDipendente:{
		        required:"Inserisci nome Dipendente"
		      }
		    }
	  });
	});

