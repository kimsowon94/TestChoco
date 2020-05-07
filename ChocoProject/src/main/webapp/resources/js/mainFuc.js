


//userId 중복 체크
$(document).ready(function() {
	/*전체 공백*/
	var engNum = /^[A-Za-z0-9+]*$/;
	
//	$("#registerbtn").attr("disabled", true);
	
	
	$("#userId").blur(function() {	
		var userId = $("#userId").val();		
		$.ajax({
			url : "/userIdCheck.do?userId=" + userId,
			dataType : "JSON",
			type : "GET",
			success : function(data, textStatus, jqXHR) 
			{
				if(data == 1)
				{
					$("#id_check").text("이미 사용중인 아이디입니다.");
					$("#id_check").css("color", "red");
					$("#userId").focus();
					
				}else if(userId == "" || userId== null){
					$('#id_check').text('아이디를 입력해주세요.');
					$('#id_check').css('color', 'red');
					$("#userId").focus();	
				}else if(userId.indexOf(" ") >= 0)
				{
					$('#id_check').text("아이디에 공백을 사용할 수 없습니다.");
					$('#id_check').css('color', 'red');
					$('#userId').val("");
					$("#userId").focus();
				}else if(!engNum.test(userId))
				{
					$('#id_check').text("영어와 숫자조합으로 등록하세요.");
					$('#id_check').css('color', 'red');
					$("#userId").focus();
				}else if(userId.length<4)
				{
					$('#id_check').text("아이디는 4글자 이상 12자리 이하로 등록하세요.");
					$('#id_check').css('color', 'red');
					$("#userId").focus();
				}
				else if(data == 0){
					$("#id_check").text("사용가능한 아이디입니다.");
					$("#id_check").css("color", "blue");
				}				
			},
			error : function() 
			{
				alert("오류");
			}			
		})
	});
	
	 $("#userPw2").blur(function() {
			var userPw = $("#userPw").val();
		var userPw2 = $("#userPw2").val();

		if (userPw != userPw2) {
			$('#pw_check').text('비밀번호가 서로 일치하지 않습니다.');
			$('#pw_check').css('color', 'red');
			$("#userPw2").focus();
			return false;
		}else if(userPw == "" && userPw2 ==""){
			$('#pw_check').text('비밀번호를 입력해주세요.');
			$('#pw_check').css('color', 'red');
			$("#userPw1").focus();
		}
		else if (userPw == userPw2) {
			$('#pw_check').text('비밀번호가 일치합니다.');
			$('#pw_check').css('color', 'blue');
		}
	});	
});

