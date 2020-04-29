// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  var captionText = document.getElementById("caption");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
  captionText.innerHTML = dots[slideIndex-1].alt;
}
//////////////////////////////////////////////////////////////////////////////////

// 회원 insert
function registerFn() {
	var formData = $("#registerForm").serialize();
	
	var check = crossCheck();
	
	if(check ==true)
	{
		
		$.ajax({
			url : "/registerUser.do",
			dataType : "JSON",
			type : "POST",
	        data: formData,
			success : function(data, textStatus, jqXHR) 
			{
				alert("회원가입이 완료되었습니다.");
				location.href="/home.do";
			},
			error : function(request,status,error) 
			{
				alert("입력한 정보를 다시 확인해주세요.");
			}				
		})
		
	}
}
//우편번호 찾기 (주소 찾기)
function openDaumZipAddress() {
	new daum.Postcode({oncomplete : function(data) {
			$("#userAddr1").val(data.zonecode);
			$("#userAddr2").val(data.address);
		}
	}).open();
}

//전체적인 유효성(빈값) 검사
 function crossCheck() {
	var userId = $("#userId").val();
	var userPw = $("#userPw").val();
	var userPw2 = $("#userPw2").val();
	var userName = $("#userName").val();
	var userPhone = $("#userPhone").val();
	var userAddr1 = $("#userAddr1").val();
	var userAddr2 = $("#userAddr2").val();
	
	// 아이디 빈값 확인
	if (userId == "") {
		$('#id_check').text('아이디를 입력해주세요.');
		$('#id_check').css('color', 'red');
		$("#userId").focus();
		return false;
	}
	
	// 비밀번호 빈값 화인
	if (userPw == "" || userPw2 == "") {
		$('#pw_check').text('비밀번호를 확인하여주세요.');
		$('#pw_check').css('color', 'red');
		$("#userPw").focus();
		return false;
	}
	else if(userPw != userPw2)
	{
		return false;
	}

	// 닉네임 빈값 확인
	if (userName == "") {
		$('#name_check').text('닉네임을 설정해주세요.');
		$('#name_check').css('color', 'red');
		$("#userName").focus();
		return false;
	}
	else
	{
		$('#name_check').text('');
	}
	
	// 휴대폰번호 빈값 확인
	if (userPhone == "") {
		$('#phone_check').text('휴대폰번호를 입력해주세요.');
		$('#phone_check').css('color', 'red');
		$("#userPhone").focus();
		return false;
	}
	
	// 주소 빈값 확인
	if (userAddr1 == "" || userAddr2 == "") {
		$('#addr_check').text('주소찾기를 해주세요.');
		$('#addr_check').css('color', 'red');
		$("#userAddr1").focus();
		return false;
	}
	
	
	return true;
}

 // 휴대폰번호 자동 하이픈(유효성 검사)
 function telValidate(obj)
 {
	 var number = obj.value.replace(/[^0-9]/g, '');
	 var tel = '';
	 
	 if(number.length < 4) {
         return number;
     } else if(number.length < 7) {
         tel += number.substr(0, 3);
         tel += "-";
         tel += number.substr(3);
     } else if(number.length < 11) {
         tel += number.substr(0, 3);
         tel += "-";
         tel += number.substr(3, 3);
         tel += "-";
         tel += number.substr(6);
     } else {
         tel += number.substr(0, 3);
         tel += "-";
         tel += number.substr(3, 4);
         tel += "-";
         tel += number.substr(7);
     }
	 
	 obj.value = tel;
	 
	 return true;
}
 
 
// 로그인
function fnLogin() {
	
	var userId =  jQuery("#userId").val();
	var userPw =  jQuery("#userPw").val();
	if( userId == "" || userPw == "")
	{	
//		jQuery('#login_check').text('아이디 또는 비밀번호를 입력해주세요.');
//		jQuery('#login_check').css('color', 'red');
		alert("아이디 또는 비밀번호를 입력해주세요.");
	}
}