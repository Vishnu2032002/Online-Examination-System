let getOtpId = document.getElementById("getOtpId");
let setOtpId = document.getElementById("setOtpId");
var otpValue;

getOtpId.addEventListener("submit",function(event){
	event.preventDefault();
	const emailId = $("#mail").val();
	let that = this;
	$.ajax({
		url:"http://localhost:8082/Javaprj/getotp",
		data:{
			email_id:emailId
			
		},
		method:'post',
		beforeSend:function(){
			$('.loader').show();
		},
		success:function(response){
			$('.loader').hide();
			otpValue = response;
		}
	});
})
setOtpId.addEventListener("submit",function(event){
	event.preventDefault();
	const otp = $("#otp").val();
	const emailId = $("#mail").val();
	
	if(otp == otpValue){
		window.location.href = "options.jsp?email_id=" + emailId;
	}
	else{
		alert("Invalid OTP");
	}
})
window.onload = function() {
    $('.loader').hide();
}
