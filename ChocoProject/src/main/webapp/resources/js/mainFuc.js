
/*데이터 테이블 */
$(document).ready(function() {
    $('#noticeBoard').DataTable({
    	 order: [[0, 'desc']], // asc 또는 desc
		 ordering: true,
		 serverSide: false,
		 stateSave: true,
		/* "dom": '<"col-sm-6"i><"col-sm-2"p>t<"col-sm-6"f><"col-sm-6"l>'*/
		  "language": {
		        "emptyTable": "게시글이 없습니다.",
		        "lengthMenu": "페이지당 _MENU_ 개씩 보기",
		        "info": "현재 _START_ - _END_ / _TOTAL_건",
		        "infoEmpty": "데이터 없음",
		        "infoFiltered": "( _MAX_건의 데이터에서 필터링됨 )",
		        "search": "검색: ",
		        "zeroRecords": "일치하는 데이터가 없어요.",
		        "loadingRecords": "로딩중...",
		        "processing":     "잠시만 기다려 주세요...",
		        "paginate": {
		            "next": "다음",
		            "previous": "이전"
		        }
		    },
    });    
});

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
		} else if (userPw == userPw2) {
			$('#pw_check').text('비밀번호가 일치합니다.');
			$('#pw_check').css('color', 'blue');
		}
	});	
	 
	 

});

