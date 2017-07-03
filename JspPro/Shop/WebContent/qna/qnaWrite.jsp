<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>
<%@ include file="sub_menu.jsp" %>

	<article>
		<h2>1:1고객 게시판</h2>
		<h3>고객님의 질문에 대해 운영자가 1:1 답변을 드립니다/</h3>
		<form name="formm" method="post" action="NonageServlet?command=qna_write">
			<filedset>
				<legend>Qna Info</legend>
				<label>Title</label>
				<input type="text" name="subject" size="65"><br>
				<label>Content</label>
				<textarea rows="8" cols="65" name="content"></textarea><br>
				
			</filedset>
			<div class="clear"></div>
			<div id="buttons" style="float:right">
				<input type="submit" value="글쓰기" class="submit">
				<input type="reset" value="취소" class="cancel">
				<input type="button" value="쇼핑계속하기" class="submit" onclick="location.href='NonageServlet?command=index'">
			</div>
				
		</form>
	</article>
	
<%@ include file="../footer.jsp" %>