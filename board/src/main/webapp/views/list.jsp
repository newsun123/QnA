<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>설문조사 결과</h3>
<div class="outer">
	<div class="q1">
		<div>1. 나이대가 어떻게 되시나요?</div>
		<div>
			<span>10대</span>
			<span>${chk1_1}</span>
		</div>
		<div>
			<span>20대</span>
			<span>${chk1_2}</span>
		</div>
		<div>
			<span>30대</span>
			<span>${chk1_3}</span>
		</div>
		<div>
			<span>40대</span>
			<span>${chk1_4}</span>
		</div>
		<div>
			<span>50대 이상</span>
			<span>${chk1_5}</span>
		</div>
		<div>
			<span>비밀</span>
			<span>${chk1_6}</span>
		</div>
	</div>
	<div class="q2">
		<div>2. 성별이 어떻게 되시나요?</div>
		<div>
			<span>남자</span>
			<span>${chk2_1}</span>
		</div>
		<div>
			<span>여자</span>
			<span>${chk2_2}</span>
		</div>
		<div>
			<span>비밀</span>
			<span>${chk2_3}</span>
		</div>
	</div>
</div>
</body>
</html>