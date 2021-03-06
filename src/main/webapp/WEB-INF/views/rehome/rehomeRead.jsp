<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>rehome read</title>
<jsp:include page="../include/inHead.jsp"></jsp:include>
</head>
<jsp:include page="../include/header.jsp"></jsp:include>
<h1>게시물 보기</h1>


 <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">FAQ</h1>
          <p class="mb-4">게시물 리스트
          &nbsp;&nbsp;&nbsp;
          
          </p>

          <!-- DataTales Example -->
          <div class="card shadow mb-4">

            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" border="1">
                  <thead>
                    <tr>
                      <th>카테고리</th>
                      <th>분양 카테고리</th>
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

                    <tr>
                      <td>${rehomeList.type_b }</td>
                       <td><c:choose>
                          <c:when test="${rehomeList.cat_r eq '0' }">개</c:when>
                          <c:when test="${rehomeList.cat_r eq '1' }">고양이</c:when></c:choose> </td>
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