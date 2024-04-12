<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/png" href="/img/logo02.png" />
<link rel="stylesheet"  href="/css/main.css" />
<link rel="stylesheet"  href="/css/stat.css" />
<link rel="stylesheet"  href="/css/test.css" />
<style>
 
body {
        margin: 0 auto;
        width: 80%;
    }
  
 #table {
    width: 800px;
    margin-bottom: 200px;
    border-collapse: collapse; /* 테두리가 겹치지 않도록 설정 */

    td {
        text-align: center;
        padding: 10px;
        border: 1px solid #000; /* 각 셀에 테두리 추가 */

        input[type=text] {
            width: 100%;
        }
        
        textarea {
            width: 100%;
            height: 250px;
        }

        &:nth-of-type(1),
        &:nth-of-type(3) {
            width: 150px;
            background-color: #3f98f7; /* 주어진 메인 컬러 사용 */
            color: white;
        }

        &:nth-of-type(2),
        &:nth-of-type(4) {
            width: 250px;
        }
    }

    tr:nth-of-type(3) td:nth-of-type(2) {
        text-align: left;
    }

    tr:nth-of-type(4) td[colspan] {
        height: 250px;
        width: 600px;
        text-align: left;
        vertical-align: baseline;
    }

    tr:last-child td {
        background-color: white;
        color: black;
    }
}

 footer {
        text-align: center;
        margin-top: 400px; /* 푸터 위 여백 설정 */
        padding: 10px; /* 푸터 내부 여백 설정 */
        background-color: #f2f2f2; /* 푸터 배경색 설정 */
        border-top: 1px solid #ddd; /* 푸터 상단에 1px 실선 테두리 추가 */
    }
     h2 {
        text-align: center; /* 제목 가운데 정렬 */
        margin-top: 50px; /* 제목 위 여백 설정 */
        margin-bottom: 30px; /* 제목 아래 여백 설정 */
    }
      
</style>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/browser-scss@1.0.3/dist/browser-scss.min.js"></script>

</head>
<body>
  <main>
    
    <%@include file="/WEB-INF/include/Header.jsp" %>
  
	<h2>게시글 내용  수정</h2>
	<form  action="/BoardPaging/Update"  method = "POST">
	<input type="hidden"  name="board_bno"     value="${ vo.board_bno}" />  
	<input type="hidden"  name="user_id" value="${ vo.user_id }" />  
<%-- 	<input type="hidden"  name="nowpage" value="${ nowpage }" />   --%>
	<table id="table">
	 <tr>
	   <td>글번호</td>
	   <td>${ vo.board_bno}</td>
	   <td>조회수</td>
	   <td>${ vo.board_hit }</td>	   
	 </tr>
	 <tr>
	   <td>작성자</td>
	   <td>${ vo.user_id }</td>
	   <td>작성일</td>
	   <td>${ vo.board_indate }</td>
	 </tr>
	 <tr>
	   <td>제목</td>
	   <td colspan="3">
	   <input type="text" name="board_title" value="${ vo.board_title }" />	   
	   </td>	
	 </tr>
	 <tr>
	   <td>내용</td>
	   <td colspan="3">
	   <textarea name="board_conent">${vo.board_conent}</textarea>
	   </td>
	 </tr>	
	 <tr>
	   <td colspan="4">
	    <input class="btn btn-primary btn-sm"  type="submit" value="수정" />
	    <a     class="btn btn-primary btn-sm"  href="/BoardPaging/List?user_id=${user_id}&nowpage=${nowpage}">목록</a>
	   </td>
	 </tr>
	
	</table>	
   </form>   
	
  </main>
 
  <script>
  	const  goListEl  = document.getElementById('goList');
  	goListEl.addEventListener('click', function(e) {
  		location.href = '/BoardPaging/List';
  	})
  
  </script>
  <%@include file="/WEB-INF/include/Footer.jsp" %>
</body>
</html>





