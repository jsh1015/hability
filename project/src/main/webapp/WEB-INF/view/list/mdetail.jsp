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
						<a href="#like" title="좋아요" class="btn-magazine-like">좋아요</a><a
							href="#like" title="SNS" class="btn-magazine-sns">SNS</a>
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
			<div class="write-comment-wrap">
				<div class="write-comment-tit">
					댓글 <span class="reply-num"></span>개 <span
						class="write-comment-sub">댓글은 로그인 후 작성이 가능합니다.</span>
				</div>
				<div class="write-comment">
					<div class="input-wrap">
						<textarea class="textarea comment-input" rows="" cols=""
							placeholder="댓글을 작성하세요." maxlength="1000"></textarea>
						<span class="change-reason-txt-count">0/1000</span>
					</div>
				</div>
				<div class="write-comment-btn">
					<a href="javascript:;" title="댓글 등록" class="btn-write-comment">댓글
						등록</a>
				</div>
			</div>
			<div class="comment-list-wrap">
				<ul class="comment-list">
					<li class="comment" id="commentGroup-1383"><div
							class="comment-thumb">
							<img
								src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/profile/basic.png"
								alt="" class="thumb-comment">
						</div>
						<div class="comment-info">
							<div class="comment-tit">
								<div class="comment-nick">invuhot</div>
								<div class="comment-date">2020.01.30</div>
								<a href="javascript:;" title="대댓글 달기" data-comment-group="1383"
									data-comment-id="1555" class="btn-reply btn-reply-comment">댓글달기</a><a
									href="javascript:;" data-comment-id="1555" title="신고"
									class="btn-report btn-report-comment">신고</a>
							</div>
							<div class="comment-txt">
								우와! 정규 30프로 쿠폰까지요?👏🏻👏🏻 대박이예요!<br>혹시 30프로 쿠폰이 마카드로잉
								업그레이드 이벤트중인 프리미엄패키지에도 적용되나요? (프리미엄패키지 세트가 현재 22만원인데 거기에 추가 쿠폰이
								적용되는지 궁금해요!!)
							</div>
						</div>
						<ul class="comment-list s-sub">
							<li class="comment"><div class="comment-thumb">
									<img
										src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/profile/hobby@hobbyful.co.kr-thumb1.jpg"
										alt="" class="thumb-comment">
								</div>
								<div class="comment-info">
									<div class="comment-tit">
										<div class="comment-nick">하비가이드</div>
										<div class="comment-date">2020.01.30</div>
										<a href="javascript:;" data-comment-id="1556" title="신고"
											class="btn-report btn-report-comment">신고</a>
									</div>
									<div class="comment-txt">
										앗! 아쉽게도 업그레이드 패키지 이벤트는 내일 종료 예정이에요! <br>샘플러 쿠폰은 그보다 이후에
										제공되기 때문에 아쉽게도 중복 적용은 불가하세요 :-)
									</div>
								</div></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>