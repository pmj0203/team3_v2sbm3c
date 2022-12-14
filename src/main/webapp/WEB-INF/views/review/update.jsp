<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="reviewno" value="${reviewVO.reviewno }" />
<c:set var="contents" value="${reviewVO.contents }" />
 
<!DOCTYPE html> 
<html lang="ko"> 
<head> 
<meta charset="UTF-8"> 
<meta name="viewport" content="user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, width=device-width" /> 
<title>http://localhost:9091/review/update.do</title>
 
 <style>
.ul{
   list-style:none;
   }
</style>
 
<link href="/css/style.css" rel="Stylesheet" type="text/css">
<link href="/css/review.css" rel="Stylesheet" type="text/css">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Bootstrap -->
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-gothic-coding.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript">
$(document).ready(function(){
    <c:forEach var="me" items="${m }">
    switch (${me.key}){
        case 1:           
            $("#btn-check").prop('checked','true');
            break;
        case 2:
            $("#btn-check1").prop('checked','true');
            break;
        case 3:
            $("#btn-check2").prop('checked','true');
            break;
        case 4:
            $("#btn-check3").prop('checked','true');
            break;
        case 5:
            $("#btn-check4").prop('checked','true');
            break;
        case 6:
            $("#btn-check5").prop('checked','true');
            break;
            
    }

    </c:forEach>
});

$(function () {
    // var contentsno = 0;
    // $('#btn_cart').on('click', function() { cart_ajax(contentsno)});
    $("#post-box").css("display", "none");
  });

  function openclose() {
    let status = $("#post-box").css("display");

    if (status == "block") {
      $("#post-box").hide();
      $("#btn-posting-box").text("키워드박스 열기");
    } else {
      $("#post-box").show();
      $("#btn-posting-box").text("키워드박스 닫기");
    }
  }

</script>
 
</head> 
 
<body>
<jsp:include page="../menu/top.jsp" flush='false' />
    <!-- <section class="vh-100"> -->
    <section class="vh-100">

        <div
            class="mask d-flex align-items-center min-vh-100 gradient-custom-3">
            <div class="container h-100">
                <div
                    class="row d-flex justify-content-center align-items-center h-100">
                    <!-- <div class="col-12 col-md-9 col-lg-7 col-xl-6"> -->
                    <div class="col-7">
                        <div class="card" style="border-radius: 5%;">
                            <!-- <div class="card-body p-5"> -->
                            <div class="card-body p-5">
 

<DIV class='content_body'>
  
  <fieldset class="fieldset_basic">
  <FORM name='frm' method='POST' action='./update.do'   enctype="multipart/form-data">
        <DIV style="width: 100%; float: inline-start; margin: 10px auto; padding:10px 10px 20px 10px">
          <c:set var="file1saved" value="${reviewVO.file1saved.toLowerCase() }" />
          <c:set var="thumb" value="${reviewVO.thumb }" />
          <c:choose>
            <c:when test="${thumb.endsWith('jpg') || thumb.endsWith('png') || thumb.endsWith('gif')}">
              <IMG src="/review/storage/${file1saved }" style=" width: 100%; height: 100%;"> 
            </c:when>
            <c:otherwise> <!-- 이미지가 없음 -->
               <IMG src="/review/images/none3.png" style="width: 100%; height: 100%;"> 
            </c:otherwise>
          </c:choose>
          <br>
     <!--     <input type='file' name='file1MF'  id='file1MF'  value=''  placeholder="파일 수정"> -->
      <input type='file' name='file1MF' id='file1MF' value='' placeholder="파일 선택">
      <br>
      
     
                    
<%--        <c:set var="loop_flag" value="false"/>
       <c:forEach var="item" items="${KeyListEnum.values()}" varStatus="status">
            <c:forEach var="mm" items="${m }">
                <c:if test="${not loop_flag }">
                  <label class="btn ${item.getValue() eq mm.key? item.getCheckedStyle() : item.getNormalStyle()}"  for="btn-check">${item.getText() }</label>
                  <input type="checkbox" class="btn-check" id="btn-check1" name="keylistno" value="${item.getValue() }" autocomplete="off" />
                  <c:set var="loop_flag" value="true"/>
                  </c:if>
            </c:forEach>
            <br />
        </c:forEach> --%>

          
                    
        

       <DIV style='text-align: left; width: 100%; float: left;'>
          <br>
            <input type="hidden" name="reviewno" value="${reviewVO.reviewno }">
            <input type="hidden" name="storeno" value="${reviewVO.storeno }">
            <div class="d-flex justify-content-center">
            <textarea name='contents'
            id="contents"
            required="required"
            class="form-control"
            placeholder=""
            rows="12"
            style='resize: none;'>${reviewVO.contents }</textarea>
            </div>
            <br>
            
             <div>
            <p class="lead">
                <a onclick="openclose()" id="btn-posting-box" class="btn btn-light btn-block btn-lg gradient-custom-4 text-body" 
                href="#" role="button">키워드박스 열기</a>
            </p>
       </div>
       
       <br>
      
       <div class="posting-box" id="post-box">
                      <div>
                        <input
                          type="checkbox"
                          class="btn-check"
                          id="btn-check"
                          name="keylistno"
                          value="1"
                          autocomplete="off"
                        />
                        <label class="btn btn-outline-danger" for="btn-check"
                          >가성비 좋아요~!</label
                        >
                        <br />
                        <input
                          type="checkbox"
                          class="btn-check"
                          id="btn-check1"
                          name="keylistno"
                          value="2"
                          autocomplete="off"
                        />
                        <label class="btn btn-outline-warning" for="btn-check1"
                          >친절해요~!</label
                        >
                        <br />
                        <input
                          type="checkbox"
                          class="btn-check"
                          id="btn-check2"
                          class="btn-check"
                          name="keylistno"
                          value="3"
                          autocomplete="off"
                        />
                        <label class="btn btn-outline-info" for="btn-check2"
                          >분위기가 좋아요~!</label
                        >
                        <br />
                        <input
                          type="checkbox"
                          class="btn-check"
                          id="btn-check3"
                          class="btn-check"
                          name="keylistno"
                          value="4"
                          autocomplete="off"
                        />
                        <label class="btn btn-outline-primary" for="btn-check3"
                          >재료가 신선해요~!</label
                        >
                        <br />
                        <input
                          type="checkbox"
                          class="btn-check"
                          id="btn-check4"
                          name="keylistno"
                          value="5"
                          autocomplete="off"
                        />
                        <label
                          class="btn btn-outline-secondary"
                          for="btn-check4"
                          >청결해요~!</label
                        >
                        <br />
                        <input
                          type="checkbox"
                          class="btn-check"
                          id="btn-check5"
                          name="keylistno"
                          value="6"
                          autocomplete="off"
                        />
                        <label class="btn btn-outline-success" for="btn-check5"
                          >주차하기 좋아요~!</label
                        >
                      </div>
                    </div>
       
            <div class="form-outline mb-4" style="float: right;">
            <button type="button" onclick = "history.back()" class="btn btn-light btn-block btn-lg gradient-custom-4 text-body">취소</button>
            <button type="submit" id="submit" class="btn btn-light btn-block btn-lg gradient-custom-4 text-body">수정 완료</button>
               
            </div>
            </div>
            </FORM>
            </fieldset>
            </DIV>
            </div>
             </div>
             </div>
             </div>
             </div>
             </div>
  </section>
 </body>
 </html>
 