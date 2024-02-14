function passData() {

	var fname = $("#fname").val();
	var lname = $("#lname").val();
	var dob = $("#datepicker").val();
	var smsflow = $('input:radio[name="sendsms"]:checked').val();
	var country = $("#country").val();
   
	var inputs=[];
	
	inputs.push('fname=' + fname);
	inputs.push('lname=' + lname);
	inputs.push('dob=' + dob);
	inputs.push('smsflow=' + smsflow);
	inputs.push('country=' + country);
	
	var str = inputs.join('&');
	
	jQuery.ajax({
		type : "POST",
		url : "register/saveInfo",
		data : str + "&reqType=AJAX",
		// timeout : 1000 * 60 * 5,
		// cache : false,
		error : function() {
			alert('error');
		},
		success : function(r) {
			 alert(r);
			if (r > 0) {
				alert("Date sate Successfully");
				window.location.href= "${pageContext.request.contextPath}/reglist";
			} else {
				alert("Date Update Successfully");
			}
			
		}
	});
	

}