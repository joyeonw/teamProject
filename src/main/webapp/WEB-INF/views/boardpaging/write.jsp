<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 등록</title>
<link rel="icon" type="image/png" href="/img/logo02.png" />
<link rel="stylesheet"  href="/css/main.css" />
<link rel="stylesheet"  href="/css/stat.css" />
<link rel="stylesheet"  href="/css/test.css" />
<style>
 
body {
    margin: 0 auto;
    width: 80%;
}
  
table {
    border-collapse: collapse;
    width: 55%; /* 테이블 너비를 100%로 설정 */
    color: #333;
    font-family: Arial, sans-serif;
    font-size: 14px;
    text-align: left;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    margin: auto;
    margin-top: 50px;
    margin-bottom: 50px;
}

table td {
    padding: 15px; /* 위아래 여백을 늘리기 위해 padding 값을 조정 */
    text-align: center;
    border: 1px solid black; /* 각 셀에 테두리 추가 */
}

table td:nth-of-type(1) {
    width: 200px;
    background: #3f98f7; /* 주어진 메인 컬러로 변경 */
    color: white;
    font-weight: bold;
}

table input[type="text"],
table textarea {
    width: calc(100% - 20px); /* 입력 필드 폭 조정 */
    padding: 10px; /* 입력 필드 여백 설정 */
    box-sizing: border-box; /* 입력 필드 크기 설정 */
}

table input[type="submit"],
table input[type="button"] {
    width: 100px; /* 버튼 폭 설정 */
    margin-top: 10px; /* 버튼 위 여백 설정 */
}

table tr:last-child td {
    background-color: transparent; /* 마지막 줄 메인 컬러 제거 */
    color: black;
}

table tr:nth-of-type(3) td:nth-of-type(2) {
    width: 800px; /* 3번째 줄 내용 부분 너비 조정 */
}

table tr:nth-of-type(3) td:nth-of-type(2) textarea {
    height: 300px; /* 텍스트 영역의 높이를 더 늘림 */
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

</head>
<body>
<main>
    
<%@include file="/WEB-INF/include/Header.jsp" %>

<h2>게시글 등록</h2>
<form action="/BoardPaging/Write" method="POST">
    <input type="hidden" name="user_id" value="${ user_id }" />
    <table>
        <tr>
            <td>제목</td>
            <td><input type="text" name="board_title" /></td>
        </tr>
        <tr>
            <td>작성자</td>
            <td>${ user_id }</td>
        </tr>
        <tr>
            <td>내용</td>
            <td><textarea name="board_content" rows="10"></textarea></td> <!-- 내용 부분 행 수 조정 -->
        </tr>   
        <tr>
            <td colspan="2">
                <input type="submit" value="글 쓰기" />
                <input type="button" value="목록" id="goList" />
            </td>
        </tr>
    </table>
</form>   
  
<script>
    const  goListEl  = document.getElementById('goList');
    goListEl.addEventListener('click', function(e) {
        location.href = '/BoardPaging/List?user_id=${user_id}&nowpage=${nowpage}';
    })
</script>
<%@include file="/WEB-INF/include/Footer.jsp" %>
</main>
</body>
</html>
