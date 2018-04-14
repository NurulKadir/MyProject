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
	
	   $( "#theFood" ).text(sessionStorage.getItem("last_name"));
	 
       $("input[name=oneFoodOnly]:radio").click(function() {
    	   		var selected = $('input[name=oneFoodOnly]:checked');
    	   		$( "#theFood" ).text( selected.val() );
       });
       
       $(".submit").click(function (e) {
       	
       	     var radioValue = $("input[name=oneFoodOnly]:checked").val();
			 $("input[name=selectedRadioValue]").val(radioValue); 
			
		    if ($("input[name=oneFoodOnly]:checked").val()) {
	   			sessionStorage.setItem("last_name", radioValue);
		    }
		    
		    if(!$('input[name="oneFoodOnly"]').is(':checked')){
         	   $("#theFood").text("Please choose a food");
             e.preventDefault();
         }
		   
		  //If it is not checked, prevent the default behavior (your submit)
            if($(".percentage").val().trim().length < 1){
            	   $("#percentError").text("Please insert percentage of the food discarded");
                e.preventDefault();
            } 
            
            var a = $(".percentage").val();
            if(isNumeric(a))//answer becomes true only if they are numbers
            {
            	
            }
            else{
            	 $("#percentError").text("Please insert a positive number");
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
});