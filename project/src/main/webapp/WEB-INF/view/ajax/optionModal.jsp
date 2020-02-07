<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
	<div id="dimmer-hf-modal-1580289583484809" class="hfc-dimmer hfc-dimmer-modal"></div>
		<div class="modal-dialog hfc-modal s-big" style="overflow: unset;">
			<!-- Modal content-->
			<div class="hfe-bg"></div>
			<div class="modal-content hfe-container">
				<header>
					<h3 class="modal-title">클래스 옵션을 선택하세요</h3>
					<button class="hfe-header-close a-close close" data-dismiss="modal">창닫기</button>
				</header>
				
					<section class="hfe-content">
						<div class="hfe-option">
							<article class="s-select">
								<header>
									<h4>클래스 옵션</h4>
									<!-- 조건 -->
									<p class="desc">1개 필수선택</p>
								</header>
								<ul class="option-list">
									<!-- forEach 필요 -->
									<li><label>
										<input type="radio" name="listIndex" value="0">
											<div class="option-item">
												<h5>베이직 패키지</h5>
												<p class="prices">
													<span class="sale" id="price">210,000원</span>
												</p>
												<span class="desc">온라인 수강권(평생수강)<br>+ 기본 재료/도구</span>
												<img src="https://s3.ap-northeast-2.amazonaws.com/staticdev.hobbyful.co.kr/product/146/b6f17010-3029-11ea-9134-2970db5a6784-resize.jpg">
											</div>
									</label></li>
								</ul>
							</article>
						</div>
					</section>				
				<footer>
					<div class="hfe-orderinfo s-installment">
						<div class="i-names">베이직 패키지</div>
						<div class="i-quantity">
							<div class="hfc-spinner">
								<button class="hfc-i-down" onclick="form_btn(-1)">줄이기</button>
								<input type="number" id="count" name="count" class="hfc-i-num" min="1" max="99" value="1">
								<button class="hfc-i-up" onclick="form_btn(1)">늘리기</button>
							</div>
						</div>
						<div class="i-price-sale">
							<span class="i-label">클래스 금액</span>
							<span class="i-num" id="totalprice" name="price"></span>
						</div>
					</div>
					<div class="hfe-btn-group s-twin">
						<button class="hfe-btn s-w5 a-cart" onclick="location.href='basketAdd.shop'">장바구니 담기</button>
						<button class="hfe-btn s-w5 a-buy s-active" onclick="location.href='../order/order_write.shop'">바로 신청하기</button>
					</div>
				</footer>
			
			</div>
		</div>