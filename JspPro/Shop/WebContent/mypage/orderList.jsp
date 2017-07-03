<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<%@ include file="sub_menu.jsp" %>
	<article>
		<h2>Order List</h2>
		<form name="formm" method="post">
			<table id="cartList">
				<tr>
					<th>상품명</th><th>수량</th><th>가격</th><th>주문일</th><th>진행상태</th>
				</tr>
				<c:forEach items="${orderList }" var="orderVO">
				<tr>
					<td>
						<a href="NonageServlet?command=product_detail&pseq=${cartVO.pseq }">
						<h3>${orderVO.pname}</h3>
						</a>
					</td>
					
					<td> ${orderVO.quantity }</td>
					<td><fmt:formatNumber value="${orderVO.price2*orderVO.quantity }" type="currency"/></td>
					<td><fmt:formatDate value="${orderVO.indate }" type="date"/></td>
					<td>처리 진행중</td>
				</tr>
				</c:forEach>
				
				<tr>
					<th colspan="2"> 총액 </th>
					<th colspan="2"> <fmt:formatNumber value="${totalPrice }" type="currency"/><br>
					</th>
					<th>주문 처리가 완료 되었습니다</th>
				</tr>
				
			</table>
			
			<div class="clear"></div>
			<div id="buttons" style="float:right">
				<input type="button" value="쇼핑 계속하기" class="cancel" onclick="location.href='NonageServlet?command=index'">
			</div>
			
		</form>
	</article>
	
<%@ include file="../footer.jsp" %>