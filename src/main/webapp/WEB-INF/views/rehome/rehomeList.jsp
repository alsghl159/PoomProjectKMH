<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<script>
//리스트에서 분양 카테고리 값을 선택했을때 값에 맞는 목록만 출력하기

</script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Rehome List</title>
<jsp:include page="../include/inHead.jsp"></jsp:include>
</head>
<jsp:include page="../include/header.jsp"></jsp:include>

    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">FAQ</h1>
          <p class="mb-4">게시물 리스트
          &nbsp;&nbsp;&nbsp;<a href="add">등록</a>
          
          </p>

			<select name="cat_r" id="cat_r">
    		<option value="0" selected>동물 분류</option>
   			<option value="1">멍멍</option>
  	  	    <option value="2">냥냥</option>
  		    <option value="3">첨벙</option>
  		    <option value="4">짹짹</option>
		    </select>
  
                   

          <!-- DataTales Example -->
          <div class="card shadow mb-4">

            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" border="1">
                  <thead>
                    <tr>
                      <th>카테고리</th>
                  
                      <th>게시글 번호</th>
                      <th>분양글 번호</th>
                      <th>제목</th>
                      <th>작성자</th>
                      <th>사진1</th>
                      <th>성별</th>
                      <th>나이</th>
                      <th>분양가</th>                 
                      <th>조회수</th>
                      <th>관심수</th>
                      <th>작성일</th>
                      <th>수정일</th>
                      <th>수정</th>
                      <th>삭제</th>
                    </tr>
                  </thead>
                  <tbody>
                  <c:forEach items="${rehomeList}" var="rehomeList">
                    <tr>
                      <td><c:choose>
                          <c:when test="${rehomeList.type_b eq '0' }">분양</c:when>
                          <c:when test="${rehomeList.type_b eq '1' }">소통</c:when>
                          <c:when test="${rehomeList.type_b eq '2' }">공지</c:when>

                          
                          </c:choose></td>
                     
                        <td><c:out value="${rehomeList.bno }" /></td>
                      <td><c:out value="${rehomeList.rno }" /></td>
                       <td><c:out value="${rehomeList.title }" /></a></td>
                      <td><c:out value="${rehomeList.id_writer }" /></td>
                      <td><c:out value="${rehomeList.img_r1 }" /></td>
                      <td><c:out value="${rehomeList.gender }" /></td>
                      <td><c:out value="${rehomeList.age }" /></td>
                      <td><c:out value="${rehomeList.cost }" /></td>                     
                      <td><c:out value="${rehomeList.viewcnt }" /></td>
                      <td><c:out value="${rehomeList.likecnt }" /></td>                      
                      <td><fmt:formatDate pattern="yyyy-MM-dd" value="${rehomeList.cre_date_b }" /></td>
                      <td><fmt:formatDate pattern="yyyy-MM-dd" value="${rehomeList.mod_date_b }" /></td>
                      <td><a href='update?bno=<c:out value="${rehomeList.bno}" />' ><c:out value="수정" /></a></td>
                      <td><a href='delete?bno=<c:out value="${rehomeList.bno}" />' ><c:out value="삭제" /></a></td>
                    </tr>
                    </c:forEach>
                  </tbody>
                </table>
              </div>
            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

<jsp:include page="../include/footer.jsp"></jsp:include>