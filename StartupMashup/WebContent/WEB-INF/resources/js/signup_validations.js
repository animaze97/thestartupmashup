/*This file contains function for validating the SignUp Form.*/

function validateFormParticipant() {
	$('input[type="text"]').css('border', '0px solid white');
	$('input[type="email"]').css('border', '0px solid white');
	$('input[type="file"]').css('border', '0px solid white');
	$('input[type="password"]').css('border', '0px solid white');
	$('#drpChallenge').css('border', '0px solid white');

	var form = document.forms['Participant'];

	var firstname = form.firstName.value.trim();
	var lastname = form.lastName.value.trim();
	var username = form.userName.value.trim();
	var password = form.password.value.trim();
	var emailid = form.emailId.value.trim();
	var phonenumber = form.phoneNumber.value.trim();
	var phoneNum = phonenumber.replace(/[^\d]/g, '');
	phoneNum = phoneNum.trim();
	var pnlength = phoneNum.length;
	var companyname = form.companyName.value.trim();
	var designation = form.designation.value.trim();
	var collegename = form.collegeName.value.trim();
	var ctc = form.ctc.value.trim();
	var resume = form.resumeFile.value.trim();

	var checkbox = form.terms.checked;

	
	

	var errorMsg = "";
	var flag = "";
	var count = 0;

	if (firstname == null || firstname == "") {
		errorMsg = "Field First Name cannot be left vacant!!";
		count++;
		form.firstName.style.border = "2px solid red";
		flag = false;
	}
	if (username == null || username == "") {
		errorMsg = "Field UserName cannot be left vacant!!";
		count++;
		form.userName.style.border = "2px solid red";
		flag = false;
	} else {
		$.ajax({
			url : "/StartupMashup/check-username",
			data : {
				username : username
			},
			method : "GET",
			async : false,
			success : function(result) {
				if (result=="true") {
					
					errorMsg = "Username already exists!";
					count++;
					form.userName.style.border = "2px solid red";
					flag = false;
				} else {
					
				}

			}
		});
	}

	if (password == null || password == "") {
		errorMsg = "Field Password cannot be left vacant!!";
		count++;
		form.password.style.border = "2px solid red";
		flag = false;
	}
	if (password.length < 8) {
		errorMsg = "Password must contain more than 8 letters!!";
		count++;
		form.password.style.border = "2px solid red";
		flag = false;
	}
	if (emailid == null || emailid == "") {
		errorMsg = "Field Email Id cannot be left vacant!!";
		count++;
		form.emailId.style.border = "2px solid red";
		flag = false;
	}
	var emailContents = emailid.search("@");
	if (emailContents == -1) {
		errorMsg = "Enter a VALID Email Id!!";
		count++;
		form.emailId.style.border = "2px solid red";
		flag = false;
	}
	if (phonenumber == null || phonenumber == "") {
		errorMsg = "Field Phone Number cannot be left vacant!!";
		count++;
		form.phoneNumber.style.border = "2px solid red";
		flag = false;
	}
	if (pnlength < 10 || pnlength > 13) {
		errorMsg = "Enter a VALID Phone Number";
		count++;
		form.phoneNumber.style.border = "2px solid red";
		flag = false;
	}
	if (companyname == null || companyname == "") {
		errorMsg = "Field Company Name cannot be left vacant!!"
		count++;
		form.companyName.style.border = "2px solid red";
		flag = false;
	}
	if (designation == null || designation == "") {
		errorMsg = "Field Designation cannot be left vacant!!"
		count++;
		form.designation.style.border = "2px solid red";
		flag = false;
	}
	if (collegename == null || collegename == "") {
		errorMsg = "Field College Name cannot be left vacant!!"
		count++;
		form.collegeName.style.border = "2px solid red";
		flag = false;
	}
	if (ctc == null || ctc == "") {
		errorMsg = "Field CTC (Cost-to-Company) cannot be left vacant!!"
		count++;
		form.ctc.style.border = "2px solid red";
		flag = false;
	}
	if (resume == null || resume == "") {
		errorMsg = "Please Attach your Resume!"
		count++;
		form.resumeFile.style.border = "2px solid red";
		flag = false;
	}
	if (checkbox == false) {
		errorMsg = "Please Agree to our Terms and Conditions before Submitting!"
		count++;
		flag = false;
	}

	if (count == 0) {
		flag = true;
	}

	if (flag == false) {
		if (count > 1)
			errorMsg = "Multiple Fields are INVALID!";
		document.getElementById("errorMsgSignUp").innerHTML = errorMsg;
	}

	return flag;

}