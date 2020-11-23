<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
<body>
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
	<!--start-blog-->
	<div class="blog">
		<div class="container">
			<div class="blog-main">
				<h3>FREE_BOARD</h3>
				
				<div class="blog-top">
				<div class="row">
   <div class="col-lg-12">
      <div class="panel panel-default">
         <div class="panel-heading">
            Board List Page
            <button id='regBtn' type="button" class="btn btn-xs pull-right">Register
               New Board</button>
         </div>

         <!-- /.panel-heading -->
         <div class="panel-body">
            <table class="table table-striped table-bordered table-hover">
               <thead>
                  <tr>
                     <th>번호</th>
                     <th>제목</th>
                     <th>작성자</th>
                     <th>작성일</th>                     
                  </tr>
               </thead>

               
                <c:forEach items="${f_board}" var="f_board">
                  <tr>
                     <td><c:out value="${f_board.board_idx}" /></td>
                     <td><a class='move' href='<c:out value="${f_board.board_idx}"/>'><c:out value="${f_board.title}" /></a></td>           
                     <td><c:out value="${f_board.member_id}" /></td>
                     <td><fmt:formatDate value="${f_board.regist_day}" pattern="yy/MM/dd"/></td>
                  </tr>
               </c:forEach>
               
            </table>
            
            <!-- 검색 영역 시작 -->
            <div class='row'>
               <div class="col-lg-12">

                  <form id='searchForm' action="/front/blogs" method='get'>
                     <select name='type'>
                        <option value=""
                           <c:out value="${pageMaker.cri.type == null?'selected':''}"/>>--</option>
                        <option value="T"
                           <c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>제목</option>
                        <option value="C"
                           <c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>내용</option>
                        <option value="W"
                           <c:out value="${pageMaker.cri.type eq 'W'?'selected':''}"/>>작성자</option>
                        <option value="TC"
                           <c:out value="${pageMaker.cri.type eq 'TC'?'selected':''}"/>>제목
                           or 내용</option>
                        <option value="TW"
                           <c:out value="${pageMaker.cri.type eq 'TW'?'selected':''}"/>>제목
                           or 작성자</option>
                        <option value="TWC"
                           <c:out value="${pageMaker.cri.type eq 'TWC'?'selected':''}"/>>제목
                           or 내용 or 작성자</option>
                     </select>
                    <input type='text' name='keyword' >
                    <!-- value='<c:out value="${pageMaker.cri.keyword}"/>' / -->
                     <input type='hidden' name='pageNum'   value='<c:out value="${pageMaker.cri.pageNum}"/>' />
                     <input type='hidden' name='amount' value='<c:out value="${pageMaker.cri.amount}"/>' />
                     <button class='btn btn-default'>Search</button>
                     
                  </form>
                  
               </div>
            </div>
            <!-- 검색 영역 시작 -->
            
          <!--  Pagination 시작 -->
            <div class='pull-right'>
               <ul class="pagination">
                  
                  <c:if test="${pageMaker.prev}">
                     <li class="paginate_button previous"><a href="${pageMaker.startPage -1}">Previous</a></li>
                  </c:if>

                  <c:forEach var="num" begin="${pageMaker.startPage}"   end="${pageMaker.endPage}">
                     <li class="paginate_button  ${pageMaker.cri.pageNum == num ? "active":""} ">
                        <a href="${num}">${num}</a>
                     </li>
                  </c:forEach>

                  <c:if test="${pageMaker.next}">
                     <li class="paginate_button next"><a href="${pageMaker.endPage +1 }">Next</a></li>
                  </c:if>

               </ul>
            </div>
            <!--  Pagination 끝 -->
            
           <!-- 페이징 Form 시작 -->
            <form id='actionForm' action="/front/blogs" method='get'>
            <input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
            <input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
            <input type='hidden' name='type' value='<c:out value="${ pageMaker.cri.type }"/>'>
            <input type='hidden' name='keyword'   value='<c:out value="${ pageMaker.cri.keyword }"/>'>
            </form>
            <!-- 페이징 Form 끝 -->
            
         
         <!-- Modal  추가 -->
         <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
            aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
               <div class="modal-content">
                  <div class="modal-header">
                     <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">&times;</button>
                     <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                  </div>
                  <div class="modal-body">처리가 완료되었습니다.</div>
                  <div class="modal-footer">
                     <button type="button" class="btn btn-default"
                        data-dismiss="modal">Close</button>
                     <button type="button" class="btn btn-primary" data-dismiss="modal">Save
                        changes</button>
                  </div>
               </div>
               <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
         </div>
         <!-- /.modal -->
         
      </div>
      <!--  end panel-body -->
   </div>
   <!-- end panel -->
   </div>
   <script type="text/javascript">
   $(document).ready(function() {
      var result = '<c:out value="${result}"/>';
      
      checkModal(result);
      // replaceState(data, title [, url ]) 히스토리를 수정
      history.replaceState({}, null, null);

      function checkModal(result) {
         // alert(history.state);
         // 글 등록 후 리스트 화면에서 model창이 나온 뒤 새로고침을 해도 model창이 안나오도록
         // result값 체크
         // result값은 controller에서 넘어온 1회성 값으로 페이지를 다시 읽으면 null이된다.
         // history.state 는 조회에서 back 했을때 history객체의 현재 정보를 읽어 값이 있다면 
         // modal창을 띄우지 않는다.
         if (result === '' || history.state) {
            return;
         }

         if (parseInt(result) > 0) {
            $(".modal-body").html("게시글 " + parseInt(result)   + " 번이 등록되었습니다.");
         }

         $("#myModal").modal("show");
      }
      
      $("#regBtn").on("click", function() {
         self.location = "/admin/register";
      });
      
      var actionForm = $("#actionForm");

      // 페이지 번호 클릭 이벤트
      $(".paginate_button a").on("click", function(e) {
         e.preventDefault();
         // console.log('click');
         actionForm.find("input[name='pageNum']").val($(this).attr("href"));
         actionForm.submit();
      });
      
      // 상세보기 클릭 이벤트
      $(".move").on("click",function(e) {
         e.preventDefault();
         actionForm.append("<input type='hidden' name='board_idx' value='" + $(this).attr("href")   + "'>");
         actionForm.attr("action", "/front/get");
         actionForm.submit();
      });
      
      // 검색 버튼 클릭 이벤트
      var searchForm = $("#searchForm");
      $("#searchForm button").on("click",   function(e) {
         if (!searchForm.find("option:selected").val()) {
            alert("검색종류를 선택하세요");
            return false;
         }

         if (!searchForm.find("input[name='keyword']").val()) {
            alert("키워드를 입력하세요");
            return false;
         }
         
         searchForm.find("input[name='pageNum']").val("1");
         e.preventDefault();
         searchForm.submit();
      });
   });
</script>
</div>
</div>
					<div class="col-md-8 blog-left">
						<div class="blog-top-left">
							<!--  <a href="single.html"><h4>Aenean vitae dui tempus</h4></a>
							<div class="post-detail"><p>Posted by <a href="#">Jackie</a> On 10 jan, 2015 <a href="#">Comments (10)</a></p></div>
							<a href="single.html"><img src="../../resources/images/blog1.jpg" alt=""></a>
							<h5>Nam pretium metus eget dolor bibendum, sed maximus nulla tristique. Etiam eu interdum massa. Cum sociis natoque penatibus et.</h5>
							<p>In neque arcu, vulputate vitae dignissim id, placerat adipiscing lorem. Nulla consectetur adipiscing metus vel pulvinar. Aenean molestie mauris non diam tincidunt faucibus. Integer odio dui, iaculis in congue eleifend, faucibus nec diam. Maecenas ac est odio, at dignissim dolor.Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris.</p>
							<div class="blog-btn">
								<a href="single.html">Readmore</a>
							</div>
						</div>
						<div class="blog-top-left">
							<a href="single.html"><h4>Aenean vitae dui tempus</h4></a>
							<div class="post-detail"><p>Posted by <a href="#">Jackie</a> On 10 jan, 2015 <a href="#">Comments (10)</a></p></div>
							<a href="single.html"><img src="../../resources/images/blog2.jpg" alt=""></a>
							<h5>Nam pretium metus eget dolor bibendum, sed maximus nulla tristique. Etiam eu interdum massa. Cum sociis natoque penatibus et.</h5>
							<p>In neque arcu, vulputate vitae dignissim id, placerat adipiscing lorem. Nulla consectetur adipiscing metus vel pulvinar. Aenean molestie mauris non diam tincidunt faucibus. Integer odio dui, iaculis in congue eleifend, faucibus nec diam. Maecenas ac est odio, at dignissim dolor.Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris.</p>
							<div class="blog-btn">
								<a href="single.html">Readmore</a>
							</div>
						</div>
						<div class="blog-top-left">
							<a href="single.html"><h4>Aenean vitae dui tempus</h4></a>
							<div class="post-detail"><p>Posted by <a href="#">Jackie</a> On 10 jan, 2015 <a href="#">Comments (10)</a></p></div>
							<a href="single.html"><img src="../../resources/images/blog3.jpg" alt=""></a>
							<h5>Nam pretium metus eget dolor bibendum, sed maximus nulla tristique. Etiam eu interdum massa. Cum sociis natoque penatibus et.</h5>
							<p>In neque arcu, vulputate vitae dignissim id, placerat adipiscing lorem. Nulla consectetur adipiscing metus vel pulvinar. Aenean molestie mauris non diam tincidunt faucibus. Integer odio dui, iaculis in congue eleifend, faucibus nec diam. Maecenas ac est odio, at dignissim dolor.Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris.</p>
							<div class="blog-btn">
								<a href="single.html">Readmore</a>
							</div>
						</div>
					</div>
					<div class="col-md-4 blog-right">
						<div class="blog-right-top">
							<h4>Categories</h4>
							<ul>
								<li><a href="#">Nulla consectetur adipiscing metus</a></li>
								<li><a href="#">purus vitae varius sagittis</a></li>
								<li><a href="#">Epsum factorial non deposit quid</a></li>
								<li><a href="#">Donec eu elit in nisi placerat</a></li>
								<li><a href="#">Curabitur congue eros ac turpis</a></li>
						</ul>
						</div>
						<div class="archives">
							<h4>Archives</h4>
						<ul>
							<li><a href="#">November,2013</a></li>
							<li><a href="#">May,2013</a></li>
							<li><a href="#">April,2013</a></li>
							<li><a href="#">June,2013</a></li>
							<li><a href="#">August,2013</a></li>
							<li><a href="#">January,2013</a></li>
						</ul>
						</div>
						<div class="recent">
							<h4>Recent posts</h4>
							<div class="recent-top">
								<div class="col-md-4 recent-left">
									<img src="../../resources/images/recent-1.jpg" alt="">
								</div>
								<div class="col-md-8 recent-left">
									<span>MARCH 13, 2013 9:31 AM</span>
									<h5>Fusce suscipit varius</h5>
									<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent vestibulum molestie lacus.</p>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="recent-top">
								<div class="col-md-4 recent-left">
									<img src="../../resources/images/recent-3.jpg" alt="">
								</div>
								<div class="col-md-8 recent-left">
									<span>MARCH 13, 2013 9:31 AM</span>
									<h5>Fusce suscipit varius</h5>
									<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent vestibulum molestie lacus.</p>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="recent-top">
								<div class="col-md-4 recent-left">
									<img src="../../resources/images/recent-2.jpg" alt="">
								</div>
								<div class="col-md-8 recent-left">
									<span>MARCH 13, 2013 9:31 AM</span>
									<h5>Fusce suscipit varius</h5>
									<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent vestibulum molestie lacus.</p>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="blog-bottom">
					<ul>
						<li><a href="#" class="active">PREV</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">...</a></li>
						<li><a href="#">14</a></li>
						<li><a href="#">15</a></li>
						<li><a href="#" class="active">NEXT</a></li>
					</ul>
				</div>				
			</div>			
		</div>-->
		
	</div>
	<!--end-blog-->
	<!--start-footer-->
	<!--  <div class="footer">
		<div class="container">
			<div class="footer-main">
				<h3>SUBSCRIBE TO NEWSLETTER</h3>
				<div class="footer-bottom">
					<div class="col-md-4 footer-bottom-left">
						<img src="../../resources/images/msg.png" alt="">
					</div>
					<div class="col-md-8 footer-bottom-right">
						<small>Enter Your Email here</small>
						<div class="contact-text">
							<input type="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}"/>
							<input type="submit" value="SUBMIT" >
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="ftr">
						<p>DESIGN BY <a href="http://w3layouts.com/"> W3LAYOUTS</a></p>
					</div>
				</div>
			</div>
		</div>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	</div>-->
	<!--end-footer-->
</body>
</html>