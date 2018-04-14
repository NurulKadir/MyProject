$(document).ready(function(){
	
				var dropdown = document.getElementsByClassName("dropButton");
				var i;
				
				for (i = 0; i < dropdown.length; i++) {
				  dropdown[i].addEventListener("click", function() {
				    this.classList.toggle("active");
				    var dropdownContent = this.nextElementSibling;
				    if (dropdownContent.style.display === "block") {
				      dropdownContent.style.display = "none";
				    } else {
				      dropdownContent.style.display = "block";
				    }
				  });
				}
	
	
	
			   $( "#foodchosenprev" ).text(sessionStorage.getItem("last_name"));
			   
			   $("#inputDate").datepicker({
				   showAnim: "fold",
				   dateFormat: "dd/mm/yy"
			   });
		
		       $("input[name=oneFoodOnly]:radio").click(function() {
		    	   		var selected = $('input[name=oneFoodOnly]:checked');
		    	   		$( "#theFood" ).text( selected.val() );
		       });
		       
		       
		       
		       $( "#inputDate" ).focus(function() {
		    	   		$("#inputDate").attr("value", "")
		       });
		       

	        // When your submit button is clicked
	          $(".openedsubmit").click(function (e) {
	        	
	        		var radioValue = $("input[name=oneFoodOnly]:checked").val();
				 $("input[name=selectedRadioValue]").val(radioValue); 
				 
				
			    if ($("input[name=oneFoodOnly]:checked").val()) {
		   			sessionStorage.setItem("last_name", radioValue);
			    }
		
	            var a = $(".time").val();
	            if(isNumeric(a))//answer becomes true only if they are numbers
	            {
	            	
	            }
	            else{
	            	 $("#opentimeError").text("Please insert a positive number");
	            	 e.preventDefault();
	            }
	            
	            // If it is not checked, prevent the default behavior (your submit)
	            if (!$('input[name="opened"]').is(':checked')) {
	            	   $("#storageError").text("Please choose a storage");
	                e.preventDefault();
	                
	            }
	         // If it is not checked, prevent the default behavior (your submit)
	            if (!$('input[name="dateButton"]').is(':checked')) {
	            	   $("#opentimeError").text("Please choose a time");
	                e.preventDefault();
	                
	            }
	            //If it is not checked, prevent the default behavior (your submit)
	            if($(".time").val().trim().length < 1){
	            	   $("#opentimeError").text("Please insert a time");
	                e.preventDefault();
	            }
	            
	            if(!$('input[name="oneFoodOnly"]').is(':checked')){
	            	   $("#theFood").text("Please choose a food");
	                e.preventDefault();
	            }
	        });

			
			function isNumeric(val) {
	           var numeric = true;
	           var chars = "0123456789";
	           var len = val.length;
	           var character = "";
	           for (i=0; i<len; i++) { character = val.charAt(i); if (chars.indexOf(character)==-1) { numeric = false; } }
	           return numeric;
	        }
		
	

	        // When your submit button is clicked
	        $(".unopenedsubmit").click(function (e) {
	        	
	        	var radioValue = $("input[name=oneFoodOnly]:checked").val();
				 $("input[name=selectedRadioValue]").val(radioValue); 
				
			    if ($("input[name=oneFoodOnly]:checked").val()) {
		   			sessionStorage.setItem("last_name", radioValue);
			    }
			   
	            // If it is not checked, prevent the default behavior (your submit)
	            if (!$('input[name="unopened"]').is(':checked')) {
	            	   $("#unopenstorageError").text("Please choose a storage");
	                e.preventDefault();
	            }
	           
	            if(!$('input[name="oneFoodOnly"]').is(':checked')){
	            	   $("#theFood").text("Please choose a food");
	                e.preventDefault();
	            }
	        });

	        
});
       

   
