<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    
<script src="https://kit.fontawesome.com/73d0df04d6.js"
    crossorigin="anonymous"></script>
    

    <style>
        *{
        margin: 0;
        padding: 0;
        font-family: sans-serif;
        list-style: none;
        text-decoration: none;
        }
     
     .menu{
         width:300px;
         border-radius:8px;
         overFlow:hidden;

     }
     .item{
            border-top:  1px solid #2980b9;
            overflow: hidden;
      }

      .btn{
          display: block;
          padding: 8px 10px;
          background: #3498db;
          color:white;
          position: relative;
      }

      .btn:before{
         content: "";
         position: absolute;
         width:14px;
         height:14px;
         background: #3498db;
         left:20px;
         bottom: -7px;
         transform: rotate(45deg);
      }
      .btn i{
          margin-right: 10px;
          
      }
      .smenu{
          overflow:hidden;
          transition: max-height 0.3s;
          max-height: 0;
      }
      .smenu a{
          display: block;
          padding: 1px 16px;
          font-size: 14px;
          margin: 3px 0;
          position: relative;
          margin: 10px;
      }

      .smenu a:before{
          content:"";
          position: absolute;
          width: 4px;
          height:100%;
          background: #3498db;
          left:0;
          top:0;
          transition: 0.3s;
          opacity:0;
      }
      .smenu a:hover:before{
          opacity: 1;
      }

      .item:target .smenu{
          max-height: 10em;
      }

      .ssmenu{

        display: none; 
        position: absolute;
        margin-left: 300px;
        margin-top: -40px;
       
      }

        .middle{
            width: 100%;
            height: 100vh;
            border: 5px solid red;
            margin: 0 auto; 
            padding: 20px;
            display: flex;
    }
        
        .card1{
            margin: 0 10%; 
        }
   
    .card2{
        width: 90%;
        border: 1px solid red;
    }
   
    </style>

<script>
    $().ready(function () {


        $('.amenu').hover(function (e) {
            var ss = e.target.nextElementSibling;
            $('.ssmenu').hide();
            $(ss).show();
        })


    $('.ssmenu').mouseleave(function(e){
        $('.ssmenu').hide();
    })

    

    });

</script>

</head>
<body>
    
    <div class="middle">
        <div class="menu card1">
            <li class="item" id="furniture">
                <a href="#furniture" class="btn"><i class="fas fa-chair">가구</i></a>
                <div class="smenu">
                <a class="amenu" href="#">침대</a>
                    <div class="ssmenu">
                        <a href="#">일반침대</a>
                        <a href="#">수납형침대</a>
                        <a href="#">저상형침대</a>
                        <a href="#">이층침대</a>
                </div>
                <a class="amenu" href="#">매트리스</a>
                <div class="ssmenu">
                    <a href="#">스프링매트리스</a>
                    <a href="#">라텍스매트리스</a>
                    <a href="#">폼매트리스</a>
                    <a href="#">혼합형매트리스</a>
                    <a href="#">토퍼</a>
                </div>
                <a class="amenu" href="#">화장대</a>
                <div class="ssmenu">
                    <a href="#">일반화장대</a>
                    <a href="#">수납형화장대</a>
                    <a href="#">좌식화장대</a>
                    <a href="#">접이식화장대</a>
                </div>
                <a class="amenu" href="#">거울</a>
                <div class="ssmenu">
                    <a href="#">벽거울</a>
                    <a href="#">전신거울</a>
                    <a href="#">탁상거울</a>
                </div>
                <a class="amenu" href="#">책상/테이블</a>
                <div class="ssmenu">
                    <a href="#">좌식테이블</a>
                    <a href="#">사이드테이블</a>
                    <a href="#">접이식테이블</a>
                    <a href="#">아웃도어테이블</a>
                </div>
                <a class="amenu" href="#">의자</a>
                <div class="ssmenu">
                    <a href="#">일반의자</a>
                    <a href="#">책상의자</a>
                    <a href="#">좌식의자</a>
                    <a href="#">안락의자/흔들의자</a>
                </div>
                <a class="amenu" href="#">거실장</a>
                <div class="ssmenu">
                    <a href="#">거실장/TV장</a>
                    <a href="#">사이드보드</a>
                    <a href="#">진열장/장식장</a>
                </div>
                </div>
            </li>

            <li class="item" id="acceptance">
                <a href="#acceptance" class="btn"><i class="fas fa-chair">수납정리</i></a>
                <div class="smenu">
                <a class="amenu" href="#">드레스룸</a>
                
                <a class="amenu" href="#">옷장</a>
               
                <a class="amenu" href="#">행거</a>
                <div class="ssmenu">
                    <a href="#">스탠드행거</a>
                    <a href="#">고정식행거</a>
                    <a href="#">이동식행거</a>
                </div>
                <a class="amenu" href="#">붙박이장</a>
               
                <a class="amenu" href="#">서랍장</a>
              
                <a class="amenu" href="#">선반</a>
             
                <a class="amenu" href="#">신발장</a>
             
                </div>
            </li>
            <li class="item" id="interior">
                <a href="#interior" class="btn"><i class="fas fa-chair">인테리어 소품</i></a>
                <div class="smenu">
                <a class="amenu" href="#">조명</a>
                <div class="ssmenu">
                    <a href="#">공간별조명</a>
                    <a href="#">LED평판등</a>
                    <a href="#">레일조명</a>
                    <a href="#">장스탠드</a>
                    <a href="#">단스탠드</a>
                    <a href="#">데스크스탠드</a>
                    <a href="#">벽조명</a>
                    <a href="#">무드등/장식조명</a>
                    <a href="#">매입등/센서등</a>
                    <a href="#">형광등/조명 부속품</a>
                </div>
                <a class="amenu" href="#">시계</a>
                <div class="ssmenu">
                    <a href="#">벽거울</a>
                </div>
                <a class="amenu" href="#">플라워/식물</a>
                <div class="ssmenu">
                    <a href="#">벽시계</a>
                    <a href="#">알람/탁상시계</a>
                    <a href="#">욕실방수시계</a>
                    <a href="#">타이머/스탑워치</a>
                </div>
                <a class="amenu" href="#">갤러리</a>
                <div class="ssmenu">
                    <a href="#">액자</a>
                    <a href="#">패브릭 포스터</a>
                    <a href="#">그림/사진</a>
                </div>
                <a class="amenu" href="#">벽장식</a>
                <div class="ssmenu">
                    <a href="#">데코스티커</a>
                    <a href="#">마크라메</a>
                    <a href="#">드림캐쳐/썬캐쳐</a>
                    <a href="#">기타</a>
                </div>
                <a class="amenu" href="#">캔들/디퓨저</a>
                <div class="ssmenu">
                    <a href="#">디퓨저</a>
                    <a href="#">홈퍼퓸/사쉐</a>
                    <a href="#">향/인센스</a>
                    <a href="#">석고방향제</a>
                    <a href="#">캔들 홀더/워머</a>
                    <a href="#">기타 악세사리</a>
                </div>
                <a class="amenu" href="#">장식소품</a>
                <div class="ssmenu">
                    <a href="#">트레이/보석함</a>
                    <a href="#">미너어쳐/DIY</a>
                    <a href="#">모빌/가랜드</a>
                    <a href="#">장식인형</a>
                    <a href="#">앤틱소품</a>
                    <a href="#">마그넷/도어벨</a>
                    <a href="#">워터볼/스노우볼</a>
                    <a href="#">오르골</a>
                    <a href="#">도어사인</a>
                    <a href="#">파티/이벤트 용품</a>
                    <a href="#">기타 장식용품</a>
                </div>
                <a class="amenu" href="#">책상/기타꾸미기</a>
                <div class="ssmenu">
                    <a href="#">디자인문구</a>
                    <a href="#">데스크테리어</a>
                    <a href="#">디지털/핸드폰</a>
                    <a href="#">기타 디자인용품</a>
                </div>
                </div>
            </li>

            <li class="item" id="Appliances">
                <a href="#Appliances" class="btn"><i class="fas fa-chair">가전제품</i></a>
                <div class="smenu">
                <a class="amenu" href="#">주방가전</a>
                <div class="ssmenu">
                    <a href="#">냉장고</a>
                    <a href="#">전기주전자</a>
                    <a href="#">에어프라이어</a>
                    <a href="#">토스터/홈베이킹</a>
                    <a href="#">전기그릴</a>
                    <a href="#">블렌더/믹서</a>
                    <a href="#">오븐/전자레인지</a>
                    <a href="#">가스레인지/인덕션</a>
                    <a href="#">전기밥솥/찜기</a>
                    <a href="#">커피메이커/머신</a>
                    <a href="#">기타</a>
                </div>
                <a class="amenu" href="#">생활가전</a>
                <div class="ssmenu">
                    <a href="#">세탁기/건조기/의류관리기</a>
                    <a href="#">미싱/다리미</a>
                    <a href="#">멀티탭</a>
                    <a href="#">건강가전/비데</a>
                    <a href="#">기타</a>
                </div>
                <a class="amenu" href="#">청소가전</a>
                <div class="ssmenu">
                    <a href="#">일반청소기</a>
                    <a href="#">로봇청소기</a>
                    <a href="#">침구청소기</a>
                    <a href="#">스팀청소기</a>
                    <a href="#">물걸레청소기</a>
                </div>
                <a class="amenu" href="#">이미용가전</a>
                <div class="ssmenu">
                    <a href="#">드라이기</a>
                    <a href="#">고데기/매직기</a>
                    <a href="#">면도기/제모기</a>
                    <a href="#">전동칫솔/칫솔살균기</a>
                    <a href="#">이미용기타</a>
                </div>
                <a class="amenu" href="#">책상/테이블</a>
                <div class="ssmenu">
                    <a href="#">좌식테이블</a>
                    <a href="#">사이드테이블</a>
                    <a href="#">접이식테이블</a>
                    <a href="#">아웃도어테이블</a>
                </div>
                <a class="amenu" href="#">음향/영상가전</a>
                <div class="ssmenu">
                    <a href="#">프로젝터</a>
                    <a href="#">TV/모니터</a>
                    <a href="#">스피커/라디오</a>
                    <a href="#">턴테이블/CDP</a>
                    <a href="#">이어폰/헤드셋</a>
                    <a href="#">PC악세사리</a>
                </div>
                <a class="amenu" href="#">계절가전</a>
                <div class="ssmenu">
                    <a href="#">가습기</a>
                    <a href="#">전기히터/온풍기</a>
                    <a href="#">온열매트/온수매트</a>
                    <a href="#">공기청정기</a>
                    <a href="#">선풍기</a>
                    <a href="#">제습기</a>
                    <a href="#">에어컨</a>
                    <a href="#">기타</a>
                </div>
                </div>
            </li>
            <li class="item" id="fabric">
                <a href="#fabric" class="btn"><i class="fas fa-chair">패브릭</i></a>
                <div class="smenu">
                <a class="amenu" href="#">침구</a>
                <div class="ssmenu">
                    <a href="#">이불커버</a>
                    <a href="#">이불솜</a>
                    <a href="#">요/토퍼</a>
                    <a href="#">베개커버/솜</a>
                    <a href="#">바디필로우/릉쿠션</a>
                    <a href="#">매트리스커버</a>
                    <a href="#">홀이불/겹이불</a>
                    <a href="#">패드/스프레드</a>
                </div>
                <a class="amenu" href="#">커튼/블라인드</a>
                <div class="ssmenu">
                    <a href="#">암막커튼</a>
                    <a href="#">일반커튼</a>
                    <a href="#">레이스/속커튼</a>
                    <a href="#">블라인드/롤스크린</a>
                    <a href="#">가리개커튼</a>
                    <a href="#">바란스/주방커튼</a>
                    <a href="#">커튼부자재</a>
                    <a href="#">캐노피</a>
                </div>
                <a class="amenu" href="#">카페트/러그</a>
                <div class="ssmenu">
                    <a href="#">극세사러그</a>
                    <a href="#">샤기카페트</a>
                    <a href="#">페르시안카페트</a>
                    <a href="#">면/라탄/핸드메이드</a>
                    <a href="#">발매트</a>
                    <a href="#">주방/다용도매트</a>
                    <a href="#">PVC/사이잘룩</a>
                    <a href="#">피크닉매트</a>
                    <a href="#">원목/대자리/쿨매트</a>
                </div>
                <a class="amenu" href="#">쿠션/방석</a>
                <div class="ssmenu">
                    <a href="#">쿠션</a>
                    <a href="#">방석/대방석</a>
                    <a href="#">쿠션/방석솜</a>
                </div>
                <a class="amenu" href="#">책상/테이블</a>
                <div class="ssmenu">
                    <a href="#">벽거울</a>
                </div>
                <a class="amenu" href="#">홈패브릭</a>
                <div class="ssmenu">
                    <a href="#">벽거울</a>
                </div>
                <a class="amenu" href="#">주방패브릭</a>
                <div class="ssmenu">
                    <a href="#">벽거울</a>
                </div>
                </div>
            </li>
            <li class="item" id="kitchen">
                <a href="#kitchen" class="btn"><i class="fas fa-chair">주방용품</i></a>
                <div class="smenu">
                <a class="amenu" href="#">그릇/홈세트</a>
                <div class="ssmenu">
                    <a href="#">벽거울</a>
                </div>
                <a class="amenu" href="#">수저/커트러리</a>
                <div class="ssmenu">
                    <a href="#">벽거울</a>
                </div>
                <a class="amenu" href="#">컵/잔/텀블러</a>
                <div class="ssmenu">
                    <a href="#">벽거울</a>
                </div>
                <a class="amenu" href="#">냄비/프라이펜</a>
                <div class="ssmenu">
                    <a href="#">벽거울</a>
                </div>
                <a class="amenu" href="#">조리도구/도마</a>
                <div class="ssmenu">
                    <a href="#">벽거울</a>
                </div>
                <a class="amenu" href="#">칼/커팅기구</a>
                <div class="ssmenu">
                    <a href="#">벽거울</a>
                </div>
                <a class="amenu" href="#">주방수납/정리</a>
                <div class="ssmenu">
                    <a href="#">벽거울</a>
                </div>
                <a class="amenu" href="#">식기건조대</a>
                <div class="ssmenu">
                    <a href="#">벽거울</a>
                </div>
                <a class="amenu" href="#">주방/잡화</a>
                <div class="ssmenu">
                    <a href="#">벽거울</a>
                </div>
                <a class="amenu" href="#">커피용품/베이킹</a>
                <div class="ssmenu">
                    <a href="#">벽거울</a>
                </div>
                </div>
            </li>

            <li class="item" id="Household">
                <a href="#Household" class="btn"><i class="fas fa-chair">생활용품</i></a>
                <div class="smenu">
                <a class="amenu" href="#">욕실용품</a>
                <div class="ssmenu">
                    <a href="#">벽거울</a>
                </div>
                <a class="amenu" href="#">수건/타월</a>
                <div class="ssmenu">
                    <a href="#">벽거울</a>
                </div>
                <a class="amenu" href="#">청소용품</a>
                <div class="ssmenu">
                    <a href="#">벽거울</a>
                </div>
                <a class="amenu" href="#">세탁용품</a>
                <div class="ssmenu">
                    <a href="#">벽거울</a>
                </div>
                <a class="amenu" href="#">생필품</a>
                <div class="ssmenu">
                    <a href="#">벽거울</a>
                </div>
                <a class="amenu" href="#">생활잡화</a>
                <div class="ssmenu">
                    <a href="#">벽거울</a>
                </div>
                <a class="amenu" href="#">주방수납/정리</a>
                <div class="ssmenu">
                    <a href="#">벽거울</a>
                </div>
                <a class="amenu" href="#">식기건조대</a>
                <div class="ssmenu">
                    <a href="#">벽거울</a>
                </div>
                <a class="amenu" href="#">주방/잡화</a>
                <div class="ssmenu">
                    <a href="#">벽거울</a>
                </div>
                <a class="amenu" href="#">커피용품/베이킹</a><div class="ssmenu">
                    <a href="#">벽거울</a>
                </div>
                </div>
            </li>

            <li class="item" id="Pets">
                <a href="#Pets" class="btn"><i class="fas fa-chair">반려동물</i></a>
                <div class="smenu">
                <a class="amenu" href="#">강아지</a>
                <div class="ssmenu">
                    <a href="#">벽거울</a>
                </div>
                <a class="amenu" href="#">고양이</a>
                <div class="ssmenu">
                    <a href="#">벽거울</a>
                </div>
                <a class="amenu" href="#">기타</a><div class="ssmenu">
                    <a href="#">벽거울</a>
                </div>
                </div>
            </li>


        </div>
        <div class="card2" >
                 <div>
                    a
                 </div>

                 <div>
                    a
                 </div>

                 <div>
                    a
                 </div>

                 <div>
                    a
                 </div>

        </div>
    </div>
</body>
</html>