<%@ page contentType="text/html; charset=UTF-8" %>
 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="user-scalable=yes, initial-scale=1.0, minimum-scale=1.0,
                                 maximum-scale=5.0, width=device-width" /> 
<title>team3</title>
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-gothic-coding.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/style.css" rel="stylesheet">
<link href="/css/admin/standard.css" rel="stylesheet">

 <script type="text/javascript" src="/js/login.js" defer></script>

</head>
<body>
<jsp:include page="../menu/top.jsp" flush='false' />
  <section class="vh-100">
  
  <div class="mask d-flex align-items-center min-vh-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-sm-11 col-md-10 col-lg-8 col-xl-6">
          <div class="card" style="border-radius: 5%;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">로그인</h2>
              <form id="frm_ad_login" name="frm_ad_login" action="/ad/login.do" method="post">
                <input type="hidden" name="return_url" value="${return_url }">
                <div class="form-floating mb-4">
                  <input type="text" id="id" name="id" class="form-control form-control-lg" placeholder="id"/>
                  <label for="floatingInput">아이디</label>
                </div>


                <div class="form-floating mb-4">
                  <input type="password" id="pwd" name="pwd" class="form-control form-control-lg"  placeholder="password"/>
                  <label for="floatingInput">비밀번호</label>
                </div>
                <div class="d-flex justify-content-center">
                  <button type="button" id="login" name="login" class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">login</button>
                </div>

              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

</body>
</html>