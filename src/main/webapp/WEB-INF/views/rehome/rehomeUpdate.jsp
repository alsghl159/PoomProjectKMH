<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rehome Update</title>
</head>
<jsp:include page="../include/header.jsp"></jsp:include>

회원 수정

<form action='update' method='post'>
  <select name="type_b" id="type_b" value='${rehomeUpdateDTO.type_b}'>
    <option value="0">분양</option>
    <option value="1">소통</option>
    <option value="2">공지</option>
  </select>
  <br><br>
  게시판번호<input type="text" name="bno" value='${rehomeUpdateDTO.bno }' ><br>
  분양글번호<input type="text" name="rno" value='${rehomeUpdateDTO.rno }'><br>
  회원번호<input type="text" name="mno" value='${rehomeUpdateDTO.mno }'><br>
  성별<select name="gender" id="gender" value='${rehomeUpdateDTO.gender }'><br>
    <option value="0">암컷</option>
    <option value="1">수컷</option>
    <option value="2">모름</option>
  </select><br>
  접종여부<select name="neut" id="neut" value='${rehomeUpdateDTO.neut }'><br>
    <option value="0">했음</option>
    <option value="1">안했음</option>
    <option value="2">모름</option>
  </select><br>
  중성화여부<select name="vac" id="vac" value='${rehomeUpdateDTO.vac }'><br>
    <option value="0">했음</option>
    <option value="1">안했음</option>
    <option value="2">모름</option>
  </select><br>
  분양가<input type="text" name="cost" value='${rehomeUpdateDTO.cost }'><br>
  조회수<input type="text" name="viewcnt" value='${rehomeUpdateDTO.viewcnt }'><br>
  좋아요수<input type="text" name="likecnt" value='${rehomeUpdateDTO.likecnt }'><br>
  신고수<input type="text" name="reportcnt" value='${rehomeUpdateDTO.reportcnt }'><br>
  회원상태<input type="text" name="stmt_b" value='${rehomeUpdateDTO.stmt_b }'><br>
  제목<input type="text" name="title" value='${rehomeUpdateDTO.title }'><br>
  글쓴이<input type="text" name="id_writer" value='${rehomeUpdateDTO.id_writer }'><br>
  <textarea id="cont_b" name="cont_b" rows="20" cols="100" value='${rehomeUpdateDTO.cont_b }'>
 
  </textarea><br>
  


<input type='submit' value='수정'>
<input type='reset' value='취소'>
<input type='button' onclick='location.href="list"' value='리스트로'>
</form><jsp:include page="../include/footer.jsp"></jsp:include>