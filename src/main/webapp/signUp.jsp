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
					<td>
						<input type="text" name="id" id="id"
						placeholder="아이디를 입력해주세요" required>
						<div class="checkFont" id="idCheck"></div>
					</td>
				</tr>
				<tr>
					<th><label>비밀번호</label></th>
					<td>
						<input type="password" name="password" id="password"
						placeholder="비밀번호를 입력해주세요" required>
						<div class="checkFont" id="passwordCheck"></div>
					</td>
				</tr>
				<tr>
					<th><label>비밀번호 확인</label></th>
					<td>
						<input type="password" id="password2"
						placeholder="비밀번호를 재입력 해주세요" required>
						<div class="checkFont" id="passwordCheck2"></div>
					</td>
				</tr>
				<tr>
					<th><label>이름</label></th>
					<td>
						<input type="text" name="name" id="name" placeholder="이름 입력해주세요" required>
						<div class="checkFont" id="nameCheck"></div>
					</td>
				</tr>
				<tr>
					<th><label>닉네임</label></th>
					<td>
						<input type="text" name="nickName" id="nick" required>
						<div class="checkFont" id="nickCheck"></div>
					</td>
				</tr>
				<tr>
					<th><label>이메일</label></th>
					<td>
						<input type='text' name="email1" id="email1"> <span>@</span>
						<input type='text' name="email2" id="email2"> 
						
						<select name="emailBox" id="email3" onChange="selectEmail(this)">
							<option value="1">직접입력</option>
							<option value="daum.net">daum.net</option>
							<option value="gmail.com">gmail.com</option>
							<option value="hanmail.net">hanmail.net</option>
							<option value="naver.com">naver.com</option>
							<option value="nate.com">nate.com</option>
						</select>
						<div class="check_font" id="emailCheck"></div>
					</td>
				</tr>
				<tr>
					<th><label>우편번호</label></th>
					<td><input type="text" id="sample6_postcode" name="adrCode"
						placeholder="우편번호"> <input type="button"
						onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
						<input type="text" id="sample6_address" name="adr1"
						placeholder="주소"><br> <input type="text"
						id="sample6_detailAddress" name="adr2" placeholder="상세주소">
						<input type="text" id="sample6_extraAddress" name="addressAdd"
						placeholder="참고항목">
					</td>
				</tr>
				<tr>
					<th><label>핸드폰 번호</label></th>
					<td><input type="text" name="phone" id="phone" required>
						<div class="checkFont" id="phoneCheck"></div>
					</td>
				</tr>
				<tr>
					<th><label>생년월일</label></th>
					<td><input type="text" name="birth" id="birth">
						<div class="checkFont" id="birthCheck"></div>
					</td>
				</tr>
				<tr>
					<th><label>성별</label></th>
					<td><label> 
							<input type="radio" name="gender"value="남자" required>남자
							 <input type="radio" name="gender"value="여자" required>여자
						</label>
						<div class="checkFont" id="genderCheck"></div>
					</td>
				</tr>
				<tr>
				<th>연령</th>
					<td>
						<input type="radio" name="age" value="10" required>10대
						<input type="radio" name="age" value="20" required>20대 
						<input type="radio" name="age" value="30" required>30대
						<input type="radio" name="age" value="40" required>40대
						<input type="radio" name="age" value="50" required>50대 이상
					</td>
				</tr>
				<tr>
					<td colspan="2" class="center">
					<input type="submit"id="submit" value="회원가입">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
<script>

	var empJ = /\s/g; //공백체크 정규표현식
	var idJ = /^[a-z0-9]{4,12}$/; //아이디 체크 정규표현식
	var pwJ = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/; //비밀번호 정규식
	var nmJ = /^[가-힣]{2,5}$/; //이름 정규표현식
	var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])/; //이메일 정규식
	var mailJ2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i; //이메일 뒷자리 정규식
	var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/; //휴대폰 번호 정규식 검사
	var nickJ = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|\*]+$/;//닉네임 정규식

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
	//여기까지 닉네임 중복 체크

	// 이름에 특수문자 들어가지 않도록 설정
	$("#name").keyup(function() {
		
		if (nmJ.test($(this).val())) {
			$("#nameCheck").text('');
		} else {
			$('#nameCheck').text('이름을 확인해주세요');
			$('#nameCheck').css('color', 'red');
		}
	});
	
	//비밀번호 유효성 검사
	$('#password').keyup(function() {
		
		if (pwJ.test($('#password').val())) {
			$('#passwordCheck').text("");
		} else {
			$('#passwordCheck').text('숫자와 영문조합으로 8자리 이상 입력해주세요');
			$('#passwordCheck').css('color', 'red');
		}
	});
	
	//비밀번호 재 입력 체크 유효성 검사
	$('#password2').keyup(function() {
		
		if ($('#password').val() == $(this).val()) {
			$('#passwordCheck2').text("");
		} else {
			$('#passwordCheck2').text('비밀번호가 일치하지 않습니다');
			$('#passwordCheck2').css('color', 'red');
		}
	});
	
	//휴대폰 유효성검사
	$('#phone').keyup(function(){
		
		var phone = $('#phone').val();
		$.ajax({
			url : 'userPhoneCheck.do?phone='+ phone ,
			type : 'get',
			success : function(data) {
				console.log("1 = 중복o / 0 = 중복x : "+ data);							
			
				if (data == 1) {
					// 1 : 핸드폰번호 중복
					$("#phoneCheck").text("사용중인 핸드폰 번호입니다");
					$("#phoneCheck").css("color", "red");
					$("#submit").attr("disabled", true);
					
				} else if(phoneJ.test(phone)){
						// 0 : 핸드폰번호 길이 / 핸드폰번호 검사
						$("#phoneCheck").text("");
						$("#submit").attr("disabled", false);
			
				} else if(phoneJ == ""){
						$('#phoneCheck').text('핸드폰 번호를 입력해주세요');
						$('#phoneCheck').css('color', 'red');
						$("#submit").attr("disabled", true);				
				
				}
				else {
					$('#phoneCheck').text("핸드폰 번호를 확인해주세요");
					$('#phoneCheck').css('color', 'red');
					$("#submit").attr("disabled", true);
				}
			
			}, 
			error : function() {
				console.log("실패");
			}
		});
	});
	
	//생년월일 유효성검사
		// 생일 유효성 검사
	var birthJ = false;

	// 생년월일	birthJ 유효성 검사
	$('#birth').blur(function(){
		
		var dateStr = $(this).val();		
	    var year = Number(dateStr.substr(0,4)); 
	    var month = Number(dateStr.substr(4,2));
	    var day = Number(dateStr.substr(6,2));
	    var today = new Date(); // 날짜 변수 선언
	    var yearNow = today.getFullYear();
		
	    if (dateStr.length <=8) {
			
		    if (year<1900 || year>yearNow){
		    	
		    	$('#birthCheck').text('생년월일을 확인해주세요');
				$('#birthCheck').css('color', 'red');
		    	
		    }else if (month<1 || month>12) {
		    		
		    	$('#birthCheck').text('생년월일을 확인해주세요');
				$('#birthCheck').css('color', 'red'); 
		    
		    }else if (day<1 || day>31) {
		    	
		    	$('#birthCheck').text('생년월일을 확인해주세요');
				$('#birthCheck').css('color', 'red'); 
		    	
		    }else if ((month==4 || month==6 || month==9 || month==11) && day==31) {
		    	 
		    	$('#birth_check').text('생년월일을 확인해주세요');
				$('#birth_check').css('color', 'red'); 
		    	 
		    }else if (month == 2) {
		    	 
		       	var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
		       	
		     	if (day>29 || (day==29 && !isleap)) {
		     		
		     		$('#birth_check').text('생년월일을 확인해주세요');
					$('#birth_check').css('color', 'red'); 
		    	
				}else{
					$('#birth_check').text('');
					birthJ = true;
				}//end of if (day>29 || (day==29 && !isleap))
			     	
	    }else{
	    	
	    	$('#birth_check').text(''); 
			birthJ = true;
		}//end of if
		
		}else{
			//1.입력된 생년월일이 8자 초과할때 :  auth:false
			$('#birth_check').text('생년월일을 확인해주세요');
			$('#birth_check').css('color', 'red');  
		}
	}); 
	
	//생년월일 체크 끝
	
	// 가입하기 실행 버튼 유효성 검사!
		
	var invalArr = new Array(6).fill(false);
	$('#submit').click(function(){
		// 비밀번호가 같은 경우 && 비밀번호 정규식
		if (($('#password').val() == ($('#password2').val()))
				&& pwJ.test($('#password').val())) {
			invalArr[0] = true;
		} else {
			invalArr[0] = false;
		}
		// 이름 정규식
		if (nmJ.test($('#name').val())) {
			invalArr[1] = true;	
		} else {
			invalArr[1] = false;
		}
		// 이메일 정규식
		if (mailJ.test($('#email1').val())){
			invalArr[2] = true;
		} else {
			invalArr[2] = false;
		}
		if (mailJ2.test($('#email2 , #email3').val())){
			invalArr[3] = true;
		} else {
			invalArr[3] = false;
		}
		// 휴대폰번호 정규식
		if (phoneJ.test($('#phone').val())) {
			invalArr[4] = true;
		} else {
			invalArr[4] = false;
		}
		// 생년월일 정규식
		if (birthJ) {
			console.log(birthJ);
			invalArr[5] = true;
		} else {
			invalArr[5] = false;
		}
		
		var validAll = true;
		
		//라디오 박스 필수체크
		if (!$('input[name="gender"]:checked').val()) {
			
		    alert('성별을 선택해주세요.');
		    $('input[name="gender"]').focus();

		}
		
		if (!$('input[name="age"]:checked').val()) {
			
		    alert('연령을 선택해주세요.');
		    $('input[name="age"]').focus(); 
		}
		
		
		for(var i = 0; i < invalArr.length; i++){
			
			if(invalArr[i] == false){
				validAll = false;
			}else{
				validAll = true;	
			}
		}
		
	
		
		if(validAll){ // 유효성 모두 통과
			alert('이메일에서 인증 메일을 확인해주세요!');
			/* confirm_email(); */
			/* location.href("${pageContext.request.contextPath}"); */
			/* return false; */
		} else{
			alert('입력한 정보들을 다시 한번 확인해주세요 :)')
			/*return false*/;
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

