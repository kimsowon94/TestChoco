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
} );