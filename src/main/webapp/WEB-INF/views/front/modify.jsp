<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<title>The Club Soccer flat Responsive Sports Category Bootstrap Website Template | Blogs :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">	
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<meta name="keywords" content="Bootstrap Responsive Templates, Iphone Compatible Templates, Smartphone Compatible Templates, Ipad Compatible Templates, Flat Responsive Templates"/>
<link href="../../../resources/front/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="../../../resources/front/css/style.css" rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Arimo:400,700,400italic,700italic' rel='stylesheet' type='text/css'> 
<link href='http://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800,900' rel='stylesheet' type='text/css'> 
<script src="../../../resources/front/js/jquery-1.11.0.min.js"></script>
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="../../../resources/front/js/move-top.js"></script>
<script type="text/javascript" src="../../../resources/front/js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
</script>
<!---- start-smoth-scrolling---->
</head>

<script>
//썸네일 파일명을 가져오는 함수
function getThumbFileName(fullFilePath) {
   var arrString = fullFilePath.split("/");
   console.log(arrString);
   arrString.splice(-1, 1, "s_" + arrString[arrString.length - 1]);
   return arrString.join("/");
}
</script>
<div class="head" id="home">
		<div class="container">
			<div class="logo">
				<a href="/"><img src="../../resources/images/logo.png" alt=""></a>
			</div>
			<div class="header">
				<div class="menu">
                    <a class="toggleMenu" href="#"><img src="../../resources/images/menu-icon.png" alt="" /> </a>
					<ul class="nav" id="nav">
						<li><a href="/">Home</a></li>
						<li><a href="/front/about">About</a></li>
						<li><a href="/front/blogs" class="active">Free_Board</a></li>
						<li><a href="/front/gallery">Gallery</a></li>						
						<li><a href="/front/contact">Contact</a></li>
					</ul>
                    <!----start-top-nav-script---->
		            <script type="text/javascript" src="../../../resources/front/js/responsive-nav.js"></script>
					<script type="text/javascript">
					jQuery(document).ready(function($) {
						$(".scroll").click(function(event){		
							event.preventDefault();
							$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
						});
					});
					</script>
		<!----//End-top-nav-script---->
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<div class="row">
  <div class="col-lg-12">
  	<br>
  	<br>
    <h1 class="page-header">Board Modify</h1>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
  <div class="col-lg-12">
  
    <div class="panel panel-default">
	
      <div class="panel-heading">Board Modify</div>
      <!-- /.panel-heading -->
      <div class="panel-body">

      <form role="form" action="/front/modify" method="post" enctype="multipart/form-data">
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
         <!--
          controller에서 파라미터 수집시 upload file은 uploadFile 이름으로 server로 넘어간다.(binary data로)
          하지만 BoardVO에서는 file_1,file_2,file_3의 이름으로 setter를 해줘야 한다.
          따라서 file_1,file_2,file_3를 hidden으로 넘겨서 controller에서 file이 upload가 안됐을 경우에도
          파라미터 수집이 되도록(값은 null로 됨) 하기위해 hidden으로 값을 넘긴다.
          -->
      <c:forEach var="i" begin="1" end="3">
         <c:set var="t" value="file_${i}" />
         <c:choose>
            <c:when test="${not empty board[t]}">
                  <input type="hidden" name="file_${i}" value="${board[t]}">
              </c:when>
              <c:otherwise>
               <input type="hidden" name="file_${i}" value="">      
              </c:otherwise>
         </c:choose>
      </c:forEach>
      
        
<div class="form-group">
  <label>Bno</label> 
  <input class="form-control" name='board_idx' 
    value='<c:out value="${f_board.board_idx }"/>' readonly="readonly" >
</div>      
 

<div class="form-group">
  <label>Title</label> 
  <input class="form-control" name='title' 
    value='<c:out value="${f_board.title }"/>' >
</div>

<div class="form-group">
  <label>Text area</label>
  <textarea class="form-control" rows="3" name='content' ><c:out value="${f_board.content}"/></textarea>
</div>

<div class="form-group">
  <label>Writer</label> 
  <input class="form-control" name='member_id'
    value='<c:out value="${f_board.member_id}"/>' readonly="readonly">            
</div>




<c:forEach var="i" begin="1" end="1">
   <c:set var="t" value="file_${i}" />
   <div class="form-group">
   <label>이미지</label>
      <c:if test="${not empty board[t]}">
         <a href="/resources/upload/${board[t]}" target="_blank"><img src="../../../resources/upload/${board[t]}" id="thumb_${i}"></a>
         <script>
              document.getElementById('thumb_${i}').src="../../../resources/upload/" + getThumbFileName('${board[t]}');
         </script>
      </c:if>
      <input type="file" class="form-control" name='uploadFile'>
   </div>
</c:forEach>

    <sec:authentication property="principal" var="pinfo"/>
   <sec:authorize access="isAuthenticated()">
      <c:if test="${pinfo.username eq f_board.member_id}">
         <button type="submit" data-oper='modify' class="btn btn-default">Modify</button>
         <button type="submit" data-oper='remove' class="btn btn-danger">Remove</button>
      </c:if>
   </sec:authorize>
     <button type="submit" data-oper='list' class="btn btn-info">List</button>
</form>


      </div>
      <!--  end panel-body -->

    </div>
    <!--  end panel-body -->
  </div>
  <!-- end panel -->
</div>
<!-- /.row -->

<script type="text/javascript">


     var formObj = $("form");

     $('button').on("click", function(e){
       
       e.preventDefault(); 
       
       var operation = $(this).data("oper");
       
       console.log(operation);
       
       if(operation === 'remove'){
         formObj.attr("action", "/front/remove");
         
       }else if(operation === 'list'){
         //move to list
         formObj.attr("action", "/front/blogs").attr("method","get");

         var pageNumTag = $("input[name='pageNum']").clone();
         var amountTag = $("input[name='amount']").clone();
         var keywordTag = $("input[name='keyword']").clone();
         var typeTag = $("input[name='type']").clone();      
         
         formObj.empty();
         
         formObj.append(pageNumTag);
         formObj.append(amountTag);
         formObj.append(keywordTag);
         formObj.append(typeTag);
       }
       
       formObj.submit();
     });

});
</script>
  




<%@include file="../includes/footer.jsp"%>




