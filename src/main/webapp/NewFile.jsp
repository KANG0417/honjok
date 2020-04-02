<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 css</title>
<style media="screen">
html {
          color: #424242;
          background: #FFF;
      }

/*  html, body {
 line-height: 1;
 font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
 -webkit-font-smoothing: antialiased;
 letter-spacing: -0.4px;
 font-size: 15px;
} */

.layout {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-direction: normal;
    -webkit-box-orient: vertical;
    -webkit-flex-direction: column;
    -moz-flex-direction: column;
    -ms-flex-direction: column;
    flex-direction: column;
}

.layout, .page, body, html {
    height: 100%;
}

body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, input, textarea, p, blockquote, th, td {
    margin: 0;
    padding: 0;
}

.container {
    margin-right: auto;
    margin-left: auto;
    box-sizing: border-box;
    width: calc(100% - 30px);
    max-width: 100%;
    box-sizing: border-box;
    min-height: 1px;
}

.project-feed {
    margin-top: 15px;
}

.col-12 {
    position: relative;
    min-height: 1px;
    box-sizing: border-box;
    -webkit-box-flex: 0;
    -moz-box-flex: 0;
    -moz-flex: 0 0 100%;
    -ms-flex: 0 0 100%;
    max-width: 100%;
    padding-right: 5px;
    padding-left: 5px;
}

.project-feed__item {
    position: relative;
    display: block;
    text-align: center;
    padding-bottom: 30px;
}

.project-feed__item__link {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: 1;
}

}
.project-feed__item__image {
    position: relative;
    padding-bottom: 66.66667%;
    overflow: hidden;
    border-radius: 8px;
    background-color: #ededed;
}

.project-feed__item__title {
    margin: 18px 0 8px;
    line-height: 24px;
    font-size: 17px;
    font-weight: 700;
    color: #424242;
    word-wrap: break-word;
}

.project-feed__item__writer {
    position: relative;
    display: block;
    margin: 8px 0;
    font-size: 13px;
    font-weight: 400;
    color: #424242;
    line-height: 16px;
    z-index: 2;
}

.project-feed__item__status {
    margin: 8px 0 0;
    color: #757575;
    font-size: 13px;
    line-height: 17px;
    text-align: center;
}

.row {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-flex;
    display: -ms-flexbox;
    -webkit-flex-wrap: wrap;
    -moz-flex-wrap: wrap;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    box-sizing: border-box;
    margin-right: -5px;
    margin-left: -5px;
    display: flex;
}

/* 북마크 */
.project-feed__item__image__scrap {
    position: absolute;
    bottom: 12px;
    right: 12px;
    border: none;
    background: none;
    margin: 0;
    padding: 0;
    z-index: 2;
    font-size: 0;
    transition: opacity .1s;
}
button {
    -webkit-appearance: button;
    -webkit-writing-mode: horizontal-tb !important;
    text-rendering: auto;
    color: buttontext;
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: center;
    align-items: flex-start;
    cursor: default;
    background-color: buttonface;
    box-sizing: border-box;
    margin: 0em;
    font: 400 13.3333px Arial;
    padding: 1px 6px;
    border-width: 2px;
    border-style: outset;
    border-color: buttonface;
    border-image: initial;
}

.project-feed__item__link {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: 1;
}
</style>
</head>
<body>
<div class="layout">
  <div class="container">
    <div class="project-feed">
<div class="virtualized-list row" style="padding-top: 0px; padding-bottom: 0px; transform: translateY(0px);">
  <div class="col-12 col-md-4">
    <article class="project-feed__item">
      <a class="project-feed__item__link" href="/projects/27357/detail?affect_type=ProjectSelfIndex&amp;affect_id=0"></a>
      <div class="project-feed__item__image">
        <img class="image" alt="" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158520729034758387.jpg?gif=1&amp;w=480&amp;h=320&amp;c=c&amp;q=80&amp;webp=1" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158520729034758387.jpg?gif=1&amp;w=640&amp;h=427&amp;c=c&amp;q=80&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158520729034758387.jpg?gif=1&amp;w=850&amp;h=567&amp;c=c&amp;q=80&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158520729034758387.jpg?gif=1&amp;w=1280&amp;h=854&amp;c=c&amp;q=80&amp;webp=1 3x">
        <span class="project-feed__item__image__new" aria-label="NEW"></span>
        <button class="project-feed__item__image__scrap" type="button" aria-label="스크랩"></button>
      </div>
      <h1 class="project-feed__item__title">따뜻한 컬러감이 돋보이는 내추럴 감성 인테리어 </h1>
    <a class="project-feed__item__writer" href="/users/644238?affect_type=ProjectSelfIndex&amp;affect_id=0">
      <img class="project-feed__item__writer__image" alt="" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/158511966917901622.JPG?gif=1&amp;w=36&amp;h=36&amp;c=c&amp;webp=1" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/158511966917901622.JPG?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/158511966917901622.JPG?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/158511966917901622.JPG?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 3x">
      <span class="project-feed__item__writer__name">숨한모금</span>
    </a>
    <span class="entry">스크랩 81&nbsp;</span>
    <span class="entry">조회 2,656</span>
  </footer>
</article>
</div>

<div class="col-12 col-md-4">
  <article class="project-feed__item">
        <a class="project-feed__item__link" href="/projects/27182/detail?affect_type=ProjectSelfIndex&amp;affect_id=1"></a>
        <div class="project-feed__item__image">
          <img class="image" alt="" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158372136492518960.jpg?gif=1&amp;w=480&amp;h=320&amp;c=c&amp;q=80&amp;webp=1" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158372136492518960.jpg?gif=1&amp;w=640&amp;h=427&amp;c=c&amp;q=80&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158372136492518960.jpg?gif=1&amp;w=850&amp;h=567&amp;c=c&amp;q=80&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158372136492518960.jpg?gif=1&amp;w=1280&amp;h=854&amp;c=c&amp;q=80&amp;webp=1 3x"><span class="project-feed__item__image__new" aria-label="NEW">
          </span>
          <button class="project-feed__item__image__scrap" type="button" aria-label="스크랩"></button>
        </div>
        <h1 class="project-feed__item__title"> 모던한 스타일링과 유화의 조화ㅣ30평 신혼집</h1>
      <a class="project-feed__item__writer" href="/users/5293819?affect_type=ProjectSelfIndex&amp;affect_id=1">
        <img class="project-feed__item__writer__image" alt="" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1582465043_247872.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c&amp;webp=1" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1582465043_247872.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1582465043_247872.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1582465043_247872.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 3x"><span class="project-feed__item__writer__name">emma_moon</span></a></address><footer class="project-feed__item__status"><span class="entry">스크랩 41&nbsp;</span><span class="entry">조회 1,875</span></footer></article></div><div class="col-12 col-md-4">
          <article class="project-feed__item">
            <a class="project-feed__item__link" href="/projects/26415/detail?affect_type=ProjectSelfIndex&amp;affect_id=2"></a>
            <div class="project-feed__item__image">
              <img class="image" alt="" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158252231413108587.jpg?gif=1&amp;w=480&amp;h=320&amp;c=c&amp;q=80&amp;webp=1" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158252231413108587.jpg?gif=1&amp;w=640&amp;h=427&amp;c=c&amp;q=80&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158252231413108587.jpg?gif=1&amp;w=850&amp;h=567&amp;c=c&amp;q=80&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158252231413108587.jpg?gif=1&amp;w=1280&amp;h=854&amp;c=c&amp;q=80&amp;webp=1 3x">
              <span class="project-feed__item__image__new" aria-label="NEW"></span>
              <button class="project-feed__item__image__scrap" type="button" aria-label="스크랩"></button>
              </div>
              <h1 class="project-feed__item__title">아기자기 소품들로 따스한 공간을 만드는 우리 집</h1>
              <address class="project-feed__item__writer-wrap">
                <a class="project-feed__item__writer" href="/users/6900969?affect_type=ProjectSelfIndex&amp;affect_id=2">
                  <img class="project-feed__item__writer__image" alt="" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1583720821_527124.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c&amp;webp=1" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1583720821_527124.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1583720821_527124.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1583720821_527124.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 3x">
                  <span class="project-feed__item__writer__name">수미홈</span>
                </a>
                <footer class="project-feed__item__status"><span class="entry">스크랩 54&nbsp;</span>
                  <span class="entry">조회 1,761</span>
                </footer>
              </article>
            </div>
          </div>
         <!--  <h1 class="project-feed__item__title">낯선 도시에서도 안락함을 느낄 수 있도록</h1>
          <address class="project-feed__item__writer-wrap"><a class="project-feed__item__writer" href="/users/4622828?affect_type=ProjectSelfIndex&amp;affect_id=3"><img class="project-feed__item__writer__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/158279132056405072.jpg?gif=1&amp;w=36&amp;h=36&amp;c=c" srcSet="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/158279132056405072.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/158279132056405072.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/158279132056405072.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c 3x" alt=""/><span class="project-feed__item__writer__name">_1002ho</span></a></address><footer class="project-feed__item__status"><span class="entry">스크랩27 </span><span class="entry">조회1,430</span></footer></article></div><div class="col-12 col-md-4"><article class="project-feed__item"><a class="project-feed__item__link" href="/projects/26649/detail?affect_type=ProjectSelfIndex&amp;affect_id=4"></a><div class="project-feed__item__image"><img class="image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158407849806426867.jpg?gif=1&amp;w=480&amp;h=320&amp;c=c&amp;q=80" srcSet="https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158407849806426867.jpg?gif=1&amp;w=640&amp;h=427&amp;c=c&amp;q=80 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158407849806426867.jpg?gif=1&amp;w=850&amp;h=567&amp;c=c&amp;q=80 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158407849806426867.jpg?gif=1&amp;w=1280&amp;h=854&amp;c=c&amp;q=80 3x" alt=""/><button class="project-feed__item__image__scrap" type="button" aria-label="스크랩"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="icon"><defs><path id="scrap-icon-6-b" d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path><filter id="scrap-icon-6-a" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset><feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur><feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out" result="shadowBlurOuter1"></feComposite><feColorMatrix in="shadowBlurOuter1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix></filter><filter id="scrap-icon-6-c" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feGaussianBlur in="SourceAlpha" result="shadowBlurInner1" stdDeviation="1.5"></feGaussianBlur><feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset><feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite><feColorMatrix in="shadowInnerInner1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix></filter></defs><g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)"><use fill="#000" filter="url(#scrap-icon-6-a)" href="#scrap-icon-6-b"></use><use fill="#FFF" fill-opacity=".4" href="#scrap-icon-6-b"></use><use fill="#000" filter="url(#scrap-icon-6-c)" href="#scrap-icon-6-b"></use><path stroke="#FFF" d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path></g></svg></button></div><h1 class="project-feed__item__title">&quot;종탑이 보이는 집에 살고 있어요&quot;</h1><address class="project-feed__item__writer-wrap"><a class="project-feed__item__writer" href="/users/987962?affect_type=ProjectSelfIndex&amp;affect_id=4"><img class="project-feed__item__writer__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1584424319_991717.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c" srcSet="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1584424319_991717.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1584424319_991717.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1584424319_991717.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c 3x" alt=""/><span class="project-feed__item__writer__name">은솜</span></a></address><footer class="project-feed__item__status"><span class="entry">스크랩1,002 </span><span class="entry">조회36,923</span></footer></article></div><div class="col-12 col-md-4"><article class="project-feed__item"><a class="project-feed__item__link" href="/projects/27190/detail?affect_type=ProjectSelfIndex&amp;affect_id=5"></a><div class="project-feed__item__image"><img class="image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158410391317593895.jpg?gif=1&amp;w=480&amp;h=320&amp;c=c&amp;q=80" srcSet="https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158410391317593895.jpg?gif=1&amp;w=640&amp;h=427&amp;c=c&amp;q=80 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158410391317593895.jpg?gif=1&amp;w=850&amp;h=567&amp;c=c&amp;q=80 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158410391317593895.jpg?gif=1&amp;w=1280&amp;h=854&amp;c=c&amp;q=80 3x" alt=""/><button class="project-feed__item__image__scrap" type="button" aria-label="스크랩"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="icon"><defs><path id="scrap-icon-7-b" d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path><filter id="scrap-icon-7-a" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset><feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur><feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out" result="shadowBlurOuter1"></feComposite><feColorMatrix in="shadowBlurOuter1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix></filter><filter id="scrap-icon-7-c" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feGaussianBlur in="SourceAlpha" result="shadowBlurInner1" stdDeviation="1.5"></feGaussianBlur><feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset><feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite><feColorMatrix in="shadowInnerInner1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix></filter></defs><g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)"><use fill="#000" filter="url(#scrap-icon-7-a)" href="#scrap-icon-7-b"></use><use fill="#FFF" fill-opacity=".4" href="#scrap-icon-7-b"></use><use fill="#000" filter="url(#scrap-icon-7-c)" href="#scrap-icon-7-b"></use><path stroke="#FFF" d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path></g></svg></button></div><h1 class="project-feed__item__title">가장 편안한 공간에서, 홈카페 라이프</h1><address class="project-feed__item__writer-wrap"><a class="project-feed__item__writer" href="/users/3346311?affect_type=ProjectSelfIndex&amp;affect_id=5"><img class="project-feed__item__writer__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/158416502745475980.jpg?gif=1&amp;w=36&amp;h=36&amp;c=c" srcSet="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/158416502745475980.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/158416502745475980.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/158416502745475980.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c 3x" alt=""/><span class="project-feed__item__writer__name">yongyong_leo</span></a></address><footer class="project-feed__item__status"><span class="entry">스크랩259 </span><span class="entry">조회15,390</span></footer></article></div><div class="col-12 col-md-4"><article class="project-feed__item"><a class="project-feed__item__link" href="/projects/27110/detail?affect_type=ProjectSelfIndex&amp;affect_id=6"></a><div class="project-feed__item__image"><img class="image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158563485638814856.jpg?gif=1&amp;w=480&amp;h=320&amp;c=c&amp;q=80" srcSet="https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158563485638814856.jpg?gif=1&amp;w=640&amp;h=427&amp;c=c&amp;q=80 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158563485638814856.jpg?gif=1&amp;w=850&amp;h=567&amp;c=c&amp;q=80 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158563485638814856.jpg?gif=1&amp;w=1280&amp;h=854&amp;c=c&amp;q=80 3x" alt=""/><button class="project-feed__item__image__scrap" type="button" aria-label="스크랩"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="icon"><defs><path id="scrap-icon-8-b" d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path><filter id="scrap-icon-8-a" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset><feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur><feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out" result="shadowBlurOuter1"></feComposite><feColorMatrix in="shadowBlurOuter1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix></filter><filter id="scrap-icon-8-c" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feGaussianBlur in="SourceAlpha" result="shadowBlurInner1" stdDeviation="1.5"></feGaussianBlur><feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset><feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite><feColorMatrix in="shadowInnerInner1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix></filter></defs><g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)"><use fill="#000" filter="url(#scrap-icon-8-a)" href="#scrap-icon-8-b"></use><use fill="#FFF" fill-opacity=".4" href="#scrap-icon-8-b"></use><use fill="#000" filter="url(#scrap-icon-8-c)" href="#scrap-icon-8-b"></use><path stroke="#FFF" d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path></g></svg></button></div><h1 class="project-feed__item__title">이 작은 방이 제겐 큰 위로가 되어요 #10평 오피스텔</h1><address class="project-feed__item__writer-wrap"><a class="project-feed__item__writer" href="/users/3528790?affect_type=ProjectSelfIndex&amp;affect_id=6"><img class="project-feed__item__writer__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1583249415_824533.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c" srcSet="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1583249415_824533.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1583249415_824533.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1583249415_824533.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c 3x" alt=""/><span class="project-feed__item__writer__name">Joey.</span></a></address><footer class="project-feed__item__status"><span class="entry">스크랩368 </span><span class="entry">조회15,843</span></footer></article></div><div class="col-12 col-md-4"><article class="project-feed__item"><a class="project-feed__item__link" href="/projects/26304/detail?affect_type=ProjectSelfIndex&amp;affect_id=7"></a><div class="project-feed__item__image"><img class="image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158520368965098325.jpg?gif=1&amp;w=480&amp;h=320&amp;c=c&amp;q=80" srcSet="https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158520368965098325.jpg?gif=1&amp;w=640&amp;h=427&amp;c=c&amp;q=80 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158520368965098325.jpg?gif=1&amp;w=850&amp;h=567&amp;c=c&amp;q=80 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158520368965098325.jpg?gif=1&amp;w=1280&amp;h=854&amp;c=c&amp;q=80 3x" alt=""/><button class="project-feed__item__image__scrap" type="button" aria-label="스크랩"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="icon"><defs><path id="scrap-icon-9-b" d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path><filter id="scrap-icon-9-a" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset><feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur><feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out" result="shadowBlurOuter1"></feComposite><feColorMatrix in="shadowBlurOuter1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix></filter><filter id="scrap-icon-9-c" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feGaussianBlur in="SourceAlpha" result="shadowBlurInner1" stdDeviation="1.5"></feGaussianBlur><feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset><feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite><feColorMatrix in="shadowInnerInner1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix></filter></defs><g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)"><use fill="#000" filter="url(#scrap-icon-9-a)" href="#scrap-icon-9-b"></use><use fill="#FFF" fill-opacity=".4" href="#scrap-icon-9-b"></use><use fill="#000" filter="url(#scrap-icon-9-c)" href="#scrap-icon-9-b"></use><path stroke="#FFF" d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path></g></svg></button></div><h1 class="project-feed__item__title">손때가 묻고 취향이 쌓여가는 나의 원룸</h1><address class="project-feed__item__writer-wrap"><a class="project-feed__item__writer" href="/users/3904010?affect_type=ProjectSelfIndex&amp;affect_id=7"><img class="project-feed__item__writer__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1582960139_594457.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c" srcSet="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1582960139_594457.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1582960139_594457.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1582960139_594457.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c 3x" alt=""/><span class="project-feed__item__writer__name">_intwominds</span></a></address><footer class="project-feed__item__status"><span class="entry">스크랩818 </span><span class="entry">조회27,513</span></footer></article></div><div class="col-12 col-md-4"><article class="project-feed__item"><a class="project-feed__item__link" href="/projects/27024/detail?affect_type=ProjectSelfIndex&amp;affect_id=8"></a><div class="project-feed__item__image"><img class="image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158374329282139211.jpg?gif=1&amp;w=480&amp;h=320&amp;c=c&amp;q=80" srcSet="https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158374329282139211.jpg?gif=1&amp;w=640&amp;h=427&amp;c=c&amp;q=80 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158374329282139211.jpg?gif=1&amp;w=850&amp;h=567&amp;c=c&amp;q=80 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158374329282139211.jpg?gif=1&amp;w=1280&amp;h=854&amp;c=c&amp;q=80 3x" alt=""/><button class="project-feed__item__image__scrap" type="button" aria-label="스크랩"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="icon"><defs><path id="scrap-icon-10-b" d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path><filter id="scrap-icon-10-a" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset><feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur><feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out" result="shadowBlurOuter1"></feComposite><feColorMatrix in="shadowBlurOuter1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix></filter><filter id="scrap-icon-10-c" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feGaussianBlur in="SourceAlpha" result="shadowBlurInner1" stdDeviation="1.5"></feGaussianBlur><feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset><feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite><feColorMatrix in="shadowInnerInner1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix></filter></defs><g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)"><use fill="#000" filter="url(#scrap-icon-10-a)" href="#scrap-icon-10-b"></use><use fill="#FFF" fill-opacity=".4" href="#scrap-icon-10-b"></use><use fill="#000" filter="url(#scrap-icon-10-c)" href="#scrap-icon-10-b"></use><path stroke="#FFF" d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path></g></svg></button></div><h1 class="project-feed__item__title">두 번째 집들이ㅣ소품과 가구 배치만으로 색다른 변화를</h1><address class="project-feed__item__writer-wrap"><a class="project-feed__item__writer" href="/users/2094282?affect_type=ProjectSelfIndex&amp;affect_id=8"><img class="project-feed__item__writer__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1536563597_h6.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c" srcSet="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1536563597_h6.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1536563597_h6.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1536563597_h6.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c 3x" alt=""/><span class="project-feed__item__writer__name">다은이네홈</span></a></address><footer class="project-feed__item__status"><span class="entry">스크랩155 </span><span class="entry">조회15,870</span></footer></article></div><div class="col-12 col-md-4"><article class="project-feed__item"><a class="project-feed__item__link" href="/projects/26939/detail?affect_type=ProjectSelfIndex&amp;affect_id=9"></a><div class="project-feed__item__image"><img class="image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158364437696870542.jpg?gif=1&amp;w=480&amp;h=320&amp;c=c&amp;q=80" srcSet="https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158364437696870542.jpg?gif=1&amp;w=640&amp;h=427&amp;c=c&amp;q=80 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158364437696870542.jpg?gif=1&amp;w=850&amp;h=567&amp;c=c&amp;q=80 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158364437696870542.jpg?gif=1&amp;w=1280&amp;h=854&amp;c=c&amp;q=80 3x" alt=""/><button class="project-feed__item__image__scrap" type="button" aria-label="스크랩"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="icon"><defs><path id="scrap-icon-11-b" d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path><filter id="scrap-icon-11-a" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset><feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur><feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out" result="shadowBlurOuter1"></feComposite><feColorMatrix in="shadowBlurOuter1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix></filter><filter id="scrap-icon-11-c" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feGaussianBlur in="SourceAlpha" result="shadowBlurInner1" stdDeviation="1.5"></feGaussianBlur><feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset><feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite><feColorMatrix in="shadowInnerInner1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix></filter></defs><g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)"><use fill="#000" filter="url(#scrap-icon-11-a)" href="#scrap-icon-11-b"></use><use fill="#FFF" fill-opacity=".4" href="#scrap-icon-11-b"></use><use fill="#000" filter="url(#scrap-icon-11-c)" href="#scrap-icon-11-b"></use><path stroke="#FFF" d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path></g></svg></button></div><h1 class="project-feed__item__title">더 좁아졌어요ㅣ카페 사장의 &#x27;자연&#x27;스러운 3평 인테리어</h1><address class="project-feed__item__writer-wrap"><a class="project-feed__item__writer" href="/users/724622?affect_type=ProjectSelfIndex&amp;affect_id=9"><img class="project-feed__item__writer__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1485971803_kakao_363620444.jpg?gif=1&amp;w=36&amp;h=36&amp;c=c" srcSet="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1485971803_kakao_363620444.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1485971803_kakao_363620444.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1485971803_kakao_363620444.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c 3x" alt=""/><span class="project-feed__item__writer__name">현초미</span></a></address><footer class="project-feed__item__status"><span class="entry">스크랩618 </span><span class="entry">조회37,971</span></footer></article></div><div class="col-12 col-md-4"><article class="project-feed__item"><a class="project-feed__item__link" href="/projects/26305/detail?affect_type=ProjectSelfIndex&amp;affect_id=10"></a><div class="project-feed__item__image"><img class="image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158317460053700207.jpg?gif=1&amp;w=480&amp;h=320&amp;c=c&amp;q=80" srcSet="https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158317460053700207.jpg?gif=1&amp;w=640&amp;h=427&amp;c=c&amp;q=80 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158317460053700207.jpg?gif=1&amp;w=850&amp;h=567&amp;c=c&amp;q=80 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158317460053700207.jpg?gif=1&amp;w=1280&amp;h=854&amp;c=c&amp;q=80 3x" alt=""/><button class="project-feed__item__image__scrap" type="button" aria-label="스크랩"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="icon"><defs><path id="scrap-icon-12-b" d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path><filter id="scrap-icon-12-a" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset><feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur><feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out" result="shadowBlurOuter1"></feComposite><feColorMatrix in="shadowBlurOuter1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix></filter><filter id="scrap-icon-12-c" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feGaussianBlur in="SourceAlpha" result="shadowBlurInner1" stdDeviation="1.5"></feGaussianBlur><feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset><feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite><feColorMatrix in="shadowInnerInner1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix></filter></defs><g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)"><use fill="#000" filter="url(#scrap-icon-12-a)" href="#scrap-icon-12-b"></use><use fill="#FFF" fill-opacity=".4" href="#scrap-icon-12-b"></use><use fill="#000" filter="url(#scrap-icon-12-c)" href="#scrap-icon-12-b"></use><path stroke="#FFF" d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path></g></svg></button></div><h1 class="project-feed__item__title">1년간의 기록, 계속 변화를 주고 있어요</h1><address class="project-feed__item__writer-wrap"><a class="project-feed__item__writer" href="/users/442426?affect_type=ProjectSelfIndex&amp;affect_id=10"><img class="project-feed__item__writer__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1550461610_2fH.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c" srcSet="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1550461610_2fH.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1550461610_2fH.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1550461610_2fH.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c 3x" alt=""/><span class="project-feed__item__writer__name">greyhome_</span></a></address><footer class="project-feed__item__status"><span class="entry">스크랩292 </span><span class="entry">조회22,960</span></footer></article></div><div class="col-12 col-md-4"><article class="project-feed__item"><a class="project-feed__item__link" href="/projects/25498/detail?affect_type=ProjectSelfIndex&amp;affect_id=11"></a><div class="project-feed__item__image"><img class="image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158520347045214406.jpg?gif=1&amp;w=480&amp;h=320&amp;c=c&amp;q=80" srcSet="https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158520347045214406.jpg?gif=1&amp;w=640&amp;h=427&amp;c=c&amp;q=80 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158520347045214406.jpg?gif=1&amp;w=850&amp;h=567&amp;c=c&amp;q=80 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/158520347045214406.jpg?gif=1&amp;w=1280&amp;h=854&amp;c=c&amp;q=80 3x" alt=""/><button class="project-feed__item__image__scrap" type="button" aria-label="스크랩"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="icon"><defs><path id="scrap-icon-13-b" d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path><filter id="scrap-icon-13-a" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset><feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur><feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out" result="shadowBlurOuter1"></feComposite><feColorMatrix in="shadowBlurOuter1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix></filter><filter id="scrap-icon-13-c" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feGaussianBlur in="SourceAlpha" result="shadowBlurInner1" stdDeviation="1.5"></feGaussianBlur><feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset><feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite><feColorMatrix in="shadowInnerInner1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix></filter></defs><g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)"><use fill="#000" filter="url(#scrap-icon-13-a)" href="#scrap-icon-13-b"></use><use fill="#FFF" fill-opacity=".4" href="#scrap-icon-13-b"></use><use fill="#000" filter="url(#scrap-icon-13-c)" href="#scrap-icon-13-b"></use><path stroke="#FFF" d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path></g></svg></button></div><h1 class="project-feed__item__title">미니멀한 공간에서 간결한 삶 추구하기ㅣ4인 가족의 집</h1><address class="project-feed__item__writer-wrap"><a class="project-feed__item__writer" href="/users/3657777?affect_type=ProjectSelfIndex&amp;affect_id=11"><img class="project-feed__item__writer__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/158274474052621964.jpg?gif=1&amp;w=36&amp;h=36&amp;c=c" srcSet="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/158274474052621964.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/158274474052621964.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/158274474052621964.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c 3x" alt=""/><span class="project-feed__item__writer__name">김주부2306</span></a></address><footer class="project-feed__item__status"><span class="entry">스크랩485 </span><span class="entry">조회27,354</span>
		 -->  
</div>
</div>
          </div>
  </body>
</html>