<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}" />		
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>magazin-detail:)</title>
</head>
<body>
<input type="hidden" class="emailid" name="emailid" value="${sessionScope.loginUser.emailid}">
<c:set var="emailid" value="${sessionScope.loginUser.emailid}"/>
	<div class="magazine-wrap">
		<div class="magazine-content-wrap">
			<div class="magazine-img magzgine-img-tit">
				<img
					src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/magazine/cover/00f8a631-4333-11ea-9bf0-ff149d2f0f51-resize.jpg"
					class="img-magazine" alt="">
				<div class="magazine-txt-tit">
					<div class="magazine-txt-tit01">앗, 새로운 취밋길 발견!</div>
					<div class="magazine-txt-tit02 cut-txt">NEW 하비풀 샘플러를 소개합니다!</div>
					<!--div class="magazine-txt-tit03">ㅡ<br/ >by hobbyful</div-->
				</div>
			</div>
			<div class="magazine-cont c-editor">
				<p>&nbsp;</p>

				<p style="text-align: center;">
					<strong>* 정규클래스 쿠폰 발급 안내*&nbsp;</strong>
				</p>

				<p style="text-align: center;">30일부터 샘플러 구매자 분들께 오늘 (2/4일) 정규클래스
					30% 쿠폰 일괄 발송 예정입니다.&nbsp;</p>

				<p style="text-align: center;">일정이 지연된 점 사과드리며, 유효기간을 2/17일
					-&gt; 2/24일 까지 연장합니다.&nbsp;</p>

				<p style="text-align: center;">2/4일 이후 쿠폰을 받지 못한 분들은 고객센터로 연락 시
					빠르게 확인해드리겠습니다. 감사합니다.&nbsp;</p>

				<p>&nbsp;</p>

				<p>&nbsp;</p>

				<p>
					<img alt="" height="10959"
						src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/editor/magazine/image/1580807876080_78921959.jpeg"
						width="750">​​​​​​
				</p>

				<p>&nbsp;</p>

				<p>
					<a href="https://hobbyful.co.kr/list/diystore/hobbysampler"
						target="_blank"><img alt="" height="173"
						src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/editor/magazine/image/1580369587979_94677703.jpeg"
						width="750"></a>
				</p>

				<p>&nbsp;</p>

				<p>
					<a href="https://hobbyful.co.kr/list/class/regular" target="_blank"><img
						alt="" height="173"
						src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/editor/magazine/image/1580369600195_99647373.jpeg"
						width="750"></a>
				</p>

				<p>&nbsp;</p>
			</div>
			<div class="magazine-cont">
				<div class="magzine-editor">
					<div class="magazine-editor-tit">EDITOR’S NOTE</div>
					앗, 새로운 길이 나타났다...! (Y/N)
				</div>
				<div class="magazine-btn-wrap">
					<a href="" title="이전" class="btn-magazine-func btn-magazine-prev">이전</a>
					<a href="javascript:;" title="다음" class="btn-magazine-func btn-magazine-next btn-magazine-off">다음</a>
					<a href="${path}/list/magazine.shop" title="목록"
						class="btn-magazine-func btn-magazine-list">목록</a>
					<div class="magazine-btn-cont">
					<c:if test="${empty sessionScope.loginUser}">
		               <a href="#login"  title="좋아요" class="btn-magazine-like showlogin">좋아요</a>
		            </c:if>
		            <c:if test="${!empty sessionScope.loginUser}">
		            <div id="h-btn">
		    	    <c:if test="${check eq null}">
						<button class="btn-magazine-like" title="좋아요"  onclick="javascript:like_it(${classDetail.cl_num},'${emailid}',${classDetail.board_type})">좋아요</button>
					</c:if>
					<c:if test="${check ne null}">
						<button class="btn-magazine-like btn-magazine-like-on"  title="좋아요" onclick="javascript:like_it(${classDetail.cl_num},'${emailid}',${classDetail.board_type})">좋아요</button>
					</c:if> 
					</div>
					</c:if>
						<a href="#like" title="SNS" class="btn-magazine-sns">SNS</a>
						<div class="magazine-btn-sns-wrap">
							<a href="#like" title="kakaotalk" class="btn-magazine-sns-cont btn-magazine-kakaotalk">카카오톡공유</a>
							<a href="#like" title="url" data-clipboard-text="https://hobbyful.co.kr/view-magazine.html?id=257" class="btn-magazine-sns-cont btn-magazine-url">URL복사</a>
							<a href="#like" title="close"class="btn-magazine-sns-cont btn-magazine-close">close</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="magazine-comment-wrap">
		<form:form modelAttribute="comment" method="post" name="comment" action="../list/commentinsert.shop">
			<div class="write-comment-wrap">
				<div class="write-comment-tit">
				<div> 댓글 ${commentcount}개 </div>
				<c:if test="${empty sessionScope.loginUser.emailid}">
					<span class="write-comment-sub">댓글은 로그인 후 작성이 가능합니다.</span>
				</c:if>
				</div>
				<div class="write-comment">
					<div class="input-wrap">
					<c:forEach items="${classList}" var="list">
						<input type="hidden" name="cl_num" id="cl_num" value="${list.cl_num}">
					</c:forEach>
						<input type="hidden" name="emailid" id="emailid" value="${sessionScope.loginUser.emailid}">
						<textarea class="textarea comment-input" name="cm_content" id="cm_content" rows="" cols="" placeholder="댓글을 작성하세요." maxlength="1000"></textarea>
						<span class="change-reason-txt-count">0/1000</span>
					</div>
				</div>
				<div class="write-comment-btn">
				<c:if test="${empty sessionScope.loginUser.emailid}">
					<a href="#login" title="댓글 등록" class="btn-write-comment">댓글 등록</a>
				</c:if>
				<c:if test="${!empty sessionScope.loginUser.emailid}">
					<button title="댓글 등록" class="btn-write-comment" type="submit">댓글 등록</button>
				</c:if>
				</div>
				
			</div>
		</form:form>
		<c:forEach items="${commentList}" var="cm">
			<div class="comment-list-wrap">
				<c:if test="${cm.cl_num eq null || cm.cl_num eq ''}">
					<div class="no-data-comment">
						아직 등록된 댓글이 없습니다. 악플보다 무서운 무플!<br>
						첫 댓글의 주인공이 되어보세요.
					</div>
				</c:if>
				<c:if test="${!empty cm.cl_num}">
				<ul class="comment-list">
					<li class="comment" id="commentGroup-1383"><div
							class="comment-thumb">
							<img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/profile/basic.png"
							alt="" class="thumb-comment">
						</div>
						<div class="comment-info">
							<div class="comment-tit">
								<div class="comment-nick">${cm.emailid}</div>
								<div class="comment-date">${cm.cm_date}</div>
								<c:if test="${cm.emailid eq sessionScope.loginUser.emailid}">
									<a href="javascript:;" data-comment-id="1555" title="신고" class="btn-report btn-report-comment">신고</a>
								</c:if>
								<c:if test="${cm.emailid ne sessionScope.loginUser.emailid}">
									<a href="javascript:;" data-comment-id="1555" title="삭제" class="btn-report btn-report-comment">삭제</a>
								</c:if>
							</div>
							<div class="comment-txt">
								${cm.cm_content}
							</div>
						</div>
					</li>
				</ul>
				</c:if>
			</div>
			</c:forEach>
		</div>
	</div>
<script>
	function like_it(cl_num,emailid,board_type){
			$.ajax("${path}/list/mlike.shop?cl_num="+cl_num+"&emailid="+emailid+"&board_type="+board_type,{
				success:function(msg){
					alert(msg);
					$("#h-btn").html("<button class='btn-magazine-like "+msg+"' onclick=\"javascript:like_it(${classDetail.cl_num},'${emailid}',${classDetail.board_type})\">좋아요</button>")
				}
			})
		}
</script>	
</body>
</html>