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
		alert('닉네임을 설정해주세요.');
//		$('#name_check').css('color', 'red');
		$("#userName").focus();
		return false;
	}
//	else
//	{
//		$('#name_check').text('');
//	}
	
	// 휴대폰번호 빈값 확인
	if (userPhone == "") {
		alert('휴대폰번호를 입력해주세요.');
//		$('#phone_check').css('color', 'red');
		$("#userPhone").focus();
		return false;
	}
	
	// 주소 빈값 확인
	if (userAddr1 == "" || userAddr2 == "") {
		alert('주소를 입력해주세요.');
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
	
	var userId = jQuery(".userId").val();
	var userPw = jQuery(".userPw").val();
	if( userId == "" || userPw == "")
	{	
//		jQuery('#login_check').text('아이디 또는 비밀번호를 입력해주세요.');
//		jQuery('#login_check').css('color', 'red');
		alert("아이디 또는 비밀번호를 입력해주세요.");
	}
	else if(userId == "admin")
	{
		$.ajax({
			url : "/adminLogin.do",
			dataType : "JSON",
			type : "POST",
			data : {
				"adminId" : userId,
				"adminPw" : userPw
			}, 
			success : function(data, textStatus, jqXHR) 
			{
				if(data.result == "fail"){
					alert("아이디 또는 비밀번호가 틀렸습니다.");
				}
				else  {
					alert("관리자님 환영합니다.");
					location.href = '/home.do';
				}
			},
			error : function() 
			{
				alert("오류");
			}			
		})
	}
	else
	{
		$.ajax({
			url : "/userLogin.do",
			dataType : "JSON",
			type : "POST",
			data : {
				"userId" : userId,
				"userPw" : userPw
			}, 
			success : function(data, textStatus, jqXHR) 
			{
				if(data.result == "fail"){
					alert("아이디 또는 비밀번호가 틀렸습니다.");
				}
				else  {
					alert(data.result + "님 환영합니다.");
					location.href = '/home.do';
				}
			},
			error : function() 
			{
				alert("오류");
			}			
		})
	}
}

//회원정보 업데이트
function fnUserUpdate() {
	var formData = $("#registerUpdate").serialize();
	/*var userId = $(".userId").val();*/
	var check = crossCheck();
	
	if(check ==true)
	{	
		$.ajax({
			url : "/userInfoUpdate.do",
			dataType : "JSON",
			type : "POST",
	        data: formData,
			success : function(data, textStatus, jqXHR) 
			{
				
				alert("회원정보 수정이 완료되었습니다.");
				location.href="/myPage.do";
			},
			error : function(request,status,error) 
			{
				alert("오류");
			}				
		})
		
	}
}

//공지사항 insert
function fnNoticeInsert() {
	var formData = $(".noticeAnimate").serialize();
	
	$.ajax({
		url : "/noticeInsert.do",
		dataType : "JSON",
		type : "POST",
        data: formData,
		success : function(data, textStatus, jqXHR) 
		{
			if(data.result == "success")
			{
				alert("공지사항이 등록되었습니다.");
				location.href="/boardNotice.do";
			}
			else
			{
				alert("세션이 만료되었습니다. 다시 로그인 해주세요.");
				location.reload();
			}
			
		},
		error : function(request,status,error) 
		{
			alert("code : " + request.status + "\r\nmessage : "
					+ request.reponseText);
		}				
	})
	

}

// 공지사항 업데이트를 위해 데이터 뿌리기
function fnNoticeUpdateForm(a) {
	var num = a;
	$("#noticeInsertBtn").css("display","none");
	$("#noticeUpdateBtn").css("display","block");
	
	$.ajax({
		url : "/noticeUpdateForm.do",
		dataType : "JSON",
		type : "POST",
        data: {"boardNum" : a},
		success : function(data, textStatus, jqXHR) 
		{
			$("#boardTitle").val(data.boardTitle);
			$(".boardContent").val(data.boardContent);
			$("#boardNum").val(data.boardNum);
			
		},
		error : function(request,status,error) 
		{
			alert("오류");
		}				
	})
}

// 공지사항 업데이트
function fnNoticeUpdate() {
	var formData = $(".noticeAnimate").serialize();

	$.ajax({
		url : "/noticeUpdate.do",
		dataType : "JSON",
		type : "POST",
		data : formData,
		success : function(data, textStatus, jqXHR) {
			
			if(data.result == "1")
			{
				alert("공지사항 수정이 완료되었습니다.");
				location.href="/boardNotice.do";
			}
	
		},
		error : function(request, status, error) {
			alert("code : " + request.status + "\r\nmessage : "
					+ request.reponseText);
		}
	})
}

//회원정보 검색창
function searchBtn() {
	var searchInput = $("#searchInput").val();
	
	$.ajax({
		url : "/searchUser.do",
		dataType : "html",
		type : "POST",
		data : {"searchInput" : searchInput},
		success : function(data) {
			$("#userList_div").html(data);
		},
		error : function(request, status, error) {
			alert("code : " + request.status + "\r\nmessage : "
					+ request.reponseText);
		}
	})
}


function fnBlackUser(a) {
	var userNum = a;
	
	if(confirm("해당 회원을 블랙처리 하시겠습니까?"))
	{
		$.ajax({
			url : "/blackUser.do",
			dataType : "JSON",
			type : "POST",
			data : {"userNum" : userNum},
			success : function(data) {
				if(data.result == "1")
				{
					alert("블랙처리가 완료되었습니다.");
					location.reload();
				}
			},
			error : function(request, status, error) {
				alert("code : " + request.status + "\r\nmessage : "
						+ request.reponseText);
			}
		})
	}
}

function fnReUser(a) {
	var userNum = a;
	if(confirm("해당 회원을 해제 하시겠습니까?"))
	{
		$.ajax({
			url : "/reUser.do",
			dataType : "JSON",
			type : "POST",
			data : {"userNum" : userNum},
			success : function(data) {
				if(data.result == "1")
				{
					alert("블랙처리가 해제되었습니다.");
					location.reload();
				}
			},
			error : function(request, status, error) {
				alert("code : " + request.status + "\r\nmessage : "
						+ request.reponseText);
			}
		})
	}
}


