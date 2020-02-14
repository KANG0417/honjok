<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("sample6_extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("sample6_extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
}

</script>
<title>회원가입</title>
</head>
<body>
	<div id="container">
		<form action="signUp.do" method="post">
			<table width=750 border="1px" align=center>
				<tr>
					<th><label>아이디</label></th>
					<td><input type="text" name="id" id="id"
						placeholder="아이디를 입력해주세요" required>
						<div class="checkFont" id="idCheck"></div></td>
				</tr>
				<tr>
					<th><label>패스워드</label></th>
					<td><input type="password" name="password" id="password"
						placeholder="비밀번호를 입력해주세요" required>
						<div class="checkFont" id="passwordCheck"></div></td>
				</tr>
				<tr>
					<th><label>이름</label></th>
					<td>
						<input type="text" name="name" placeholder="이름 입력해주세요" 
						required>
						<div class="checkFont" id="nameCheck"></div>
					</td>
				</tr>
				<tr>
					<th><label>닉네임</label></th>
					<td>
					<input type="text" name="nick" id="nick" required>
					<div class="checkFont" id="nickCheck"></div>
					</td>
					
				</tr>
				<tr>
					<th><label>이메일</label></th>
					<td><input type='text' name="email1" id="email1"> <span>@</span>
						<input type='text' name="email2" id="email2"> <select
						name="emailBox" id="email3" onChange="selectEmail(this)">
							<option value="1">직접입력</option>
							<option value="daum.net">daum.net</option>
							<option value="gmail.com">gmail.com</option>
							<option value="hanmail.net">hanmail.net</option>
							<option value="naver.com">naver.com</option>
							<option value="nate.com">nate.com</option>
					</select>
						<div class="check_font" id="emailCheck"></div></td>
				</tr>
				<tr>
					<th><label>우편번호</label></th>
						<td>				
						<input type="text" id="sample6_postcode" name="moimZoneCode" placeholder="우편번호">
						<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
						<input type="text" id="sample6_address" name="address" placeholder="주소"><br>
						<input type="text" id="sample6_detailAddress" name="addressSub"placeholder="상세주소">
						<input type="text" id="sample6_extraAddress" name="addressAdd" placeholder="참고항목">
						</td>
				</tr>
				<tr>
					<th><label>핸드폰 번호</label></th>
					<td><input type="text" name="phone"></td>
				</tr>
				<tr>
					<th><label>생년월일</label></th>
					<td><input type="text" name="birth"></td>
				</tr>
				<tr>
					<th><label>성별</label></th>
					<td><label> <input type="radio" name="gender"
							value="남자">남자 <input type="radio" name="gender"
							value="여자">여자
					</label></td>
				</tr>
				<tr>
					<td colspan="2" class="center"><input type="submit"
						id="submit" value="회원가입"></td>
				</tr>
			</table>
		</form>

	</div>
</body>
<script>

	var empJ = /\s/g; //공백체크 정규표현식
	var idJ = /^[a-z0-9]{4,12}$/; //아이디 체크 정규표현식
	var PwJ = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;
	var NmJ = /^[가-힣]{2,5}$/; //이름 정규표현식
	var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])/;
	var mailJ2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/; //휴대폰 번호 정규식 검사
	var nickJ = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|\*]+$/;

	$("#id").keyup(function() {
		var userId = $('#id').val();
			$.ajax({
				url : 'userIdCheck.do?id='+ userId ,
				type : 'get',
				success : function(data) {
					console.log("1 = 중복o / 0 = 중복x : "+ data);							
				
					if (data == 1) {
						// 1 : 아이디가 중복되는 문구
						$("#idCheck").text("사용중인 아이디입니다");
						$("#idCheck").css("color", "red");
						$("#submit").attr("disabled", true);
						
					} else if(idJ.test(userId)){
							// 0 : 아이디 길이 / 문자열 검사
							$("#idCheck").text("");
							$("#submit").attr("disabled", false);
				
					} else if(userId == ""){
							$('#idCheck').text('아이디를 입력해주세요 :)');
							$('#idCheck').css('color', 'red');
							$("#submit").attr("disabled", true);				
							
					}
					else {
						$('#idCheck').text("아이디는 소문자와 숫자 4~12자리만 가능합니다 :) :)");
						$('#idCheck').css('color', 'red');
						$("#submit").attr("disabled", true);
					}
				
				}, 
				error : function() {
					console.log("실패");
			}
		});
	});
	
	
	
	//이메일 중복체크
		
	$("#email1").keyup(function(){
	
	var email1 = $("#email1").val();
		
		if(mailJ.test(email1)){
			// 0 : 아이디 길이 / 문자열 검사
			$("#emailCheck").text("");
			$("#submit").attr("disabled", false);
		
			} else if(email1 == ""){
				$('#emailCheck').text('이메일을 입력해주세요');
				$('#emailCheck').css('color', 'red');
				$("#submit").attr("disabled", true);				
			}
			else {
				$('#emailCheck').text("이메일을 확인해주세요");
				$('#emailCheck').css('color', 'red');
				$("#submit").attr("disabled", true);
			}
	});

	
	$("#email2,#email3").change(function() {
		
		var email1 = $('#email1').val();
		var email2 = $('#email2').val();
		var email = $('#email1').val() +"@"+ $('#email2').val();
		console.log(email1)
		console.log(email2)
		console.log(email)
		$.ajax({
			url : 'userEmailCheck.do?email='+ email,
			type : 'get',
			dataType : 'json',
			success : function(data) {
				console.log("1 = 중복o / 0 = 중복x : "+ data);							
			
				if (data == 1) {
					// 1 : 아이디가 중복되는 문구
					$("#emailCheck").text("사용중인 이메일입니다");
					$("#emailCheck").css("color", "red");
					$("#submit").attr("disabled", true);
				} else if(mailJ2.test(email2)){
					// 0 : 아이디 길이 / 문자열 검사
					$("#emailCheck").text("");
					$("#submit").attr("disabled", false);
				} else if(email2 == ""){
					$('#emailCheck').text('이메일을 입력해주세요');
					$('#emailCheck').css('color', 'red');
					$("#submit").attr("disabled", true);				
				} else{
					$('#emailCheck').text("이메일을 확인해주세요");
					$('#emailCheck').css('color', 'red');
					$("#submit").attr("disabled", true);
				}
				
			}, 
			error : function() {
					console.log("실패");
			}
		}); 
	});
	//여기까지 이메일 중복 체크
	
	//닉네임 중복체크
	
	$("#nick").keyup(function() {
		var nick = $('#nick').val();
			$.ajax({
				url : 'userNickCheck.do?nick='+ nick ,
				type : 'get',
				success : function(data) {
					console.log("1 = 중복o / 0 = 중복x : "+ data);							
				
					if (data == 1) {
						// 1 : 닉네임이 중복되는 문구
						$("#nickCheck").text("사용중인 닉네임입니다");
						$("#nickCheck").css("color", "red");
						$("#submit").attr("disabled", true);
						
					} else if(nickJ.test(nick)){
							// 0 : 닉네임 길이 / 닉네임 검사
							$("#nickCheck").text("");
							$("#submit").attr("disabled", false);
				
					} else if(nick == ""){
							$('#nickCheck').text('닉네임을 입력해주세요');
							$('#nickCheck').css('color', 'red');
							$("#submit").attr("disabled", true);				
							
					}
					else {
						$('#nickCheck').text("닉네임은 한글/숫자/영문만 입력가능합니다");
						$('#nickCheck').css('color', 'red');
						$("#submit").attr("disabled", true);
					}
				
				}, 
				error : function() {
					console.log("실패");
			}
		});
	});
	

	
	
	//비밀번호 유효성 검사
	$('#password').keyup(function() {
		if (PwJ.test($('#password').val())) {
			console.log('true');
			$('#passwordCheck').text("");
		} else {
			console.log('false');
			$('#passwordCheck').text('숫자와 영문조합으로 8자리 이상 입력해주세요');
			$('#passwordCheck').css('color', 'red');
		}
	});
	
	
	


	//이메일 메일 셀렉트박스 자동입력
	function selectEmail(email){ 
		var $email = $(email); 
		var $email2 = $('input[name=email2]'); // '1'인 경우 직접입력 
			if($email.val() == "1"){ 
			
			$email2.attr('readonly', false); 
			$email2.val('');
			
			}else { 
			$email2.attr('readonly', true); $email2.val($email.val()); 
			}
	}
	//여기까지 이메일 셀렉트 박스 자동입력
	

</script>
</html>

