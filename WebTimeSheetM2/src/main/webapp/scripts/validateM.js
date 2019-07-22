

//Login manager validate
$(document).ready(function() {
  $("#signupFormM").validate({
	    rules: {
	    	idManager: {
		        required: true
		      },
	    	managerName: {
	        required: true
	      },
	      managerPassword: {
	        required: true,
	      }
	    },
	    messages: {
	    	idManager:{
		        required:"Scegli ID Manager"
		      },
	    	managerName:{
	        required:"Inserisci nome Manager"
	      },
	      managerPassword:{
	        required:"Inserisci password"
	      }
	    }
	    
  });
});

