
//add the rule here
$.validator.addMethod("valueNotEquals", function(value, element, arg){
 return arg !== value;
}, "Value must not equal arg.");


//Login dipendente validate
$(document).ready(function() {
	  $("#signupFormD").validate({
		    rules: {
		    	idDipendente: {
			        required: true
			      },
			      nomeDipendente: {
		        required: true
		      },
		      
		      passwordDipendente: {
		        required: true
		      },
		      ruolo: {
		    	  valueNotEquals: "default"
			      }
		    },
		    messages: {
		    	idDipendente:{
			        required:"Scegli ID Dipendente"
			      },
			      nomeDipendente:{
		        required:"Inserisci nome Dipendente"
		      },
		      passwordDipendente:{
		        required:"Inserisci password"
		      },
		      ruolo:{
		    	  valueNotEquals: "seleziona il ruolo"
			      }
		    }
		    
	  });
	});


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

