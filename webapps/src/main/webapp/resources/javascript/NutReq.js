$(document).ready(function(){
	
	   $( "#gender" ).val(sessionStorage.getItem("g"));
	   $( "#lifestyle" ).val(sessionStorage.getItem("l"));
	   $( "#alter" ).val(sessionStorage.getItem("a"));
	   
	   function getRadioButtonValue(){
		    var gender = $("input[name=gender]:checked").val();
		    var lifestyle = $("input[name=lifestyle]:checked").val();
		    var toalter = $("input[name=gainMaintainLose]:checked").val();
		    
			 sessionStorage.setItem("g", gender);
			 sessionStorage.setItem("l", lifestyle);
			 sessionStorage.setItem("a", toalter);
		}
	   
	   $('#lose').click(function(){
		   $("#toGain").removeAttr('required');
		   $("#toLose").attr('required', 'required');
		});
	   
	   $('#gain').click(function(){
		   $("#toLose").removeAttr('required');
		   $("#toGain").attr('required', 'required');
		});
	   
	   
	  
	   
	   
	  
	  
		    
		    
});