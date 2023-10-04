<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	width:100%;
	padding-top:0;
	margin:auto;
}
h2 {
	text-align:center;
}
.outer {
	width:800px;
	margin:auto;
	text-align:left;
}
.a {
	margin-top:10px;
	margin-bottom:20px;
}
img {
	display:block;
	margin:auto;
}
</style>
<script>
	function check(my) {
		
		let chk1 = my.chk1.value;
		let chk2 = my.chk2.value;
		let chk3 = my.chk3.value;
		let chk4 = my.chk4.value;
		let chk5 = my.chk5.value;
		let chk7 = my.chk7.value;
		let chk8 = my.chk8.value;
		let chk9 = my.chk9.value;
		let chk10 = my.chk10.value;
		
		//chk6은 checkbox로 유효성 검사 체크용
		let chk6_len = document.getElementsByName("chk6").length;
		let chk6_val = "";
		for(var i=0; i<chk6_len; i++) {
			if(document.getElementsByClassName("chk6")[i].checked == true) {
				chk6_val = chk6 + document.getElementsByName("chk6")[i].value + ",";		
			}
		}
		//유효성 검사하기
		var chk = 10;
		
		if(chk1==0) {
			alert("1번 문항을 체크해주세요.");
			return false;
		}else {
			chk--;
		}
		
		if(chk2==0) {
			alert("2번 문항을 체크해주세요.");
			return false;
		}else {
			chk--;
		}
		
		if(chk3==0) {
			alert("3번 문항을 체크해주세요.");
			return false;
		}else {
			chk--;
		}
		
		if(chk4==0) {
			alert("4번 문항을 체크해주세요.");
			return false;
		}else {
			chk--;
		}
		
		if(chk5==0) {
			alert("5번 문항을 체크해주세요.");
			return false;
		}else {
			chk--;
		}
		
		if(chk6_val=="") {
			alert("6번 문항을 체크해주세요.");
			return false;
		}else {
			chk--;
		}
		
		if(chk7==0) {
			alert("7번 문항을 체크해주세요.");
			return false;
		}else {
			chk--;
		}
		
		if(chk8==0) {
			alert("8번 문항을 체크해주세요.");
			return false;
		}else {
			chk--;
		}
		
		if(chk9==0) {
			alert("9번 문항을 체크해주세요.");
			return false;
		}else {
			chk--;
		}
		
		if(chk10==0) {
			alert("10번 문항을 작성해주세요.");
			return false;
		}else {
			chk--;
		}
		
		if(chk==0) {
			return true;
		}else{
			return false;		
		}
		
	
	}
</script>
</head>
<body>
<img src="/static/img/b.jpg">
	<div class="outer">
		<h2>버블버블 설문조사</h2>
		<form name="qform" method="post" action="writeOk" onsubmit="return check(this)">
			<div class="q">1. 나이대가 어떻게 되시나요?</div>
			<div class="a">
				<input type="radio" name="chk1" value="1">10대
				<input type="radio" name="chk1" value="2">20대
				<input type="radio" name="chk1" value="3">30대
				<input type="radio" name="chk1" value="4">40대
				<input type="radio" name="chk1" value="5">50대 이상
				<input type="radio" name="chk1" value="6">비밀
			</div>
			<div class="q">2. 성별이 어떻게 되시나요?</div>
			<div class="a">
				<input type="radio" name="chk2" value="1">남
				<input type="radio" name="chk2" value="2">여
				<input type="radio" name="chk2" value="3">비밀
			</div>
			<div class="q">3. 평소에 게임을 하시는 시간이 어떻게 되시나요?</div>
			<div class="a">
				<input type="radio" name="chk3" value="1">1시간 이내
				<input type="radio" name="chk3" value="2">1~2시간
				<input type="radio" name="chk3" value="3">1~3시간
				<input type="radio" name="chk3" value="4">1~5시간
				<input type="radio" name="chk3" value="5">1~6시간
			</div>
			<div class="q">4. 기존에 하고 계시던 게임이 있으신가요?</div>
			<div class="a">
				<input type="radio" name="chk4" value="1">네
				<input type="radio" name="chk4" value="2">아니오
			</div>
			<div class="q">5. 좋아하는 게임의 종류가 어떻게 되시나요?</div>
			<div class="a">
				<input type="radio" name="chk5" value="1">RPG
				<input type="radio" name="chk5" value="2">RTS
				<input type="radio" name="chk5" value="3">AOS
				<input type="radio" name="chk5" value="4">FPS
				<input type="radio" name="chk5" value="5">TPS
				<input type="radio" name="chk5" value="6">TCG
				<input type="radio" name="chk5" value="7">MMORPG
				<input type="radio" name="chk5" value="8">ROGUELIKE
			</div>
			<div class="q">6. 하단의 게임 중 하시고 계시는 게임을 선택해주세요(최소 1개)</div>
			<div class="a">
				<input type="checkbox" name="chk6" class="chk6" value="1">원신
				<input type="checkbox" name="chk6" class="chk6" value="2">라그나로크
				<input type="checkbox" name="chk6" class="chk6" value="3">그라나도에스파다
				<input type="checkbox" name="chk6" class="chk6" value="4">철권7
				<input type="checkbox" name="chk6" class="chk6" value="5">리그오브레전드
				<input type="checkbox" name="chk6" class="chk6" value="6">도타
				<input type="checkbox" name="chk6" class="chk6" value="7">기타
			</div>
			<div class="q">7. 버블버블의 그래픽은 만족하시요?</div>
			<div class="a">
				<input type="radio" name="chk7" value="1">매우 만족
				<input type="radio" name="chk7" value="2">조금 만족
				<input type="radio" name="chk7" value="3">보통
				<input type="radio" name="chk7" value="4">조금 불만족
				<input type="radio" name="chk7" value="5">매우 불만족
			</div>
			<div class="q">8. 버블버블의 스토리는 만족하시나요? 0일시 이유 게제</div>
			<div class="a">
				<input type="radio" name="chk8" value="1">매우 만족
				<input type="radio" name="chk8" value="2">조금 만족
				<input type="radio" name="chk8" value="3">보통
				<input type="radio" name="chk8" value="4">조금 불만족
				<input type="radio" name="chk8" value="5">매우 불만족
			</div>
			<div class="q">9. 버블버블의 액션성에 만족하시나요? 0일시 이유 게제</div>
			<div class="a">
				<input type="radio" name="chk9" value="1">매우 만족
				<input type="radio" name="chk9" value="2">조금 만족
				<input type="radio" name="chk9" value="3">보통
				<input type="radio" name="chk9" value="4">조금 불만족
				<input type="radio" name="chk9" value="5">매우 불만족
			</div>
			<div class="q">10. 버블버블에 원하시는 점을 적어주세요 (최대 200자)</div>
			<div class="a">
				<textarea name="chk10" cols="100" rows="7" style="resize:none;"></textarea>
			</div>
			<input type="submit" value="저장">
		</form>
	</div>
</body>
</html>