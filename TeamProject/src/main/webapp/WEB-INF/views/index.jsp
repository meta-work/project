<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<title>Index</title>
	
	
	<!-- 기본 CSS 처리 시작 -->
	<%@ include file="/WEB-INF/views/include/basic.jsp" %>	
	<!-- 기본 CSS 처리 끝 -->
	
	<!-- -->
	<script src="https://code.jquery.com/jquery-1.12.1.min.js"></script>
 
</head>

    <script>
    
    // setInterval(function(){        
    $.getJSON('http://api.openweathermap.org/data/2.5/forecast?id=1835848&APPID=b1682c5bcfc7d4e87270646c047bc01e&units=metric',function(data){
      //  alert(data.city.name);
       var $minTemp = data.list[0].main.temp_min;     //
       var $maxTemp = data.list[0].main.temp_max;    //
       var $cTemp = data.list[0].main.temp;          //
       var $cDate =  data.list[0].dt_txt;            //
       var $press =  data.list[0].main.pressure;            //
       var $humidity =  data.list[0].main.humidity;            //
       var $feels_like =  data.list[0].main.feels_like;            //
       var $clouds =  data.list[0].clouds.all;            // 
       var $wind =  data.list[0].wind.speed;            // 
       var $sys =  data.list[0].sys.pod;            //
    //      var $ =  data.list[0].dt_txt;            


        // var $Temp = data.list[0].main.temp_min;

        
        //A.appendTo(B)  B요소 내용의 뒤에 A를 추가
        //A.append(B)   A요소 내용의 뒤에 B를 추가
        //A.prependTo(B) B요소의 내용의 앞에 A를 추가
        //A.prepend(B)   A요소 내용의 앞에 B를 추가

        
         $('.clowtemp').append($minTemp);
         $('.ctemp').append($cTemp);
         $('h3').prepend($cDate);
         $('.chightemp').append($maxTemp);
         $('.pressure').append($press);
         $('.humidity').append($humidity);
         $('.feels_like').append($feels_like);
         $('.clouds').append($clouds);
         $('.wind').append($wind);
         

         //  },1000);

          if(50<$minTemp){
           $('.cicon').append("GOOD");
    } else if (20>$minTemp){
    $('.cicon').append("Bad");
    }
      });    
     
    </script>

<body>

	<!-- 해더 시작 -->
	<%@ include file="/WEB-INF/views/include/header.jsp" %>
	<!-- 해더 끝 -->


	

 <!-- Activities -->
 
  <section class="content-section" id="portfolio">
    <div class="container">
      <div class="content-section-heading text-center"> 
        <br></br>
        <h2 class="text-secondary mb-0">What is your activities today?</h2>
        <h3 class="mb-0">  </h3>
      </div>
      
      
        <div class="row no-gutters">
        <div class="col-lg-6">
          <a class="portfolio-item" href="#camping info">
          
            <span class="caption">
              <span class="caption-content">
              <br></br>
                <h2 style="text-align:center;">Camping</h2>
              </span>
            </span>
            <img class="img-fluid" src="http://www.earlyadopter.co.kr/wp-content/uploads/2014/06/1.jpg" alt="">
          	<p class="mb-0">People who love camping and change are people with life.</p>
          	
          </a>
        </div>        

        
        <div class="col-lg-6">
          <a class="portfolio-item" href="#paragliding info">
            <span class="caption">
              <span class="caption-content">
              <br></br>
                <h2 style="text-align:center;">Paragliding</h2>
              </span>
            </span>
            <img class="img-fluid" src="http://blogfiles.naver.net/20150212_218/coffeestro_14237048435416bUYO_JPEG/%C6%D0%B7%AF%B1%DB%B6%F3%C0%CC%B5%F9_%BD%BA%C4%AB%C0%CC%B4%D9%C0%CC%BA%F9.jpg" alt="">
            <p style="text-align:center;" class="mb-0">Enjoy freedom in the sky</p>
         </a>
        </div>
        
        
        <div class="col-lg-6">
          <a class="portfolio-item" href="#drone info">
            <span class="caption">
              <span class="caption-content">
              <br></br>
                <h2 style="text-align:center;">Drone</h2>
              </span>
            </span>
            <img class="img-fluid" src="https://post-phinf.pstatic.net/MjAxNzA0MjZfMjAg/MDAxNDkzMTg0OTUxNTQy.sQeRewF6aHJ4O-OqrEDNn5PwrBuaXZh8-P1GLAfAlbUg.AijzFOLJjT6KL3URMPGazlfQUoj8v0FSzkBa_OdvdtAg.JPEG/drone1.jpg?type=w1200" alt="">
            <p style="text-align:center;" class="mb-0">There is someone who have never fly drone, But no one have fly drone once.</p>
          </a>
        </div>
        
        
        <div class="col-lg-6">
          <a class="portfolio-item" href="#fishing info">
            <span class="caption">
              <span class="caption-content">
              <br></br>
                <h2 style="text-align:center;">Fishing</h2>
              </span>
            </span>
            <img class="img-fluid" src="https://lh6.googleusercontent.com/proxy/SP1Z8VlJU7-vIKmRbPJq122p1BorfJZoYT5ZQends_7NdgKvInYA34vc8s6y9LKs2pnm9BOy_RfTeSvenOHZZo25WDok-VW6KIbwICt8u4larfz92Q" alt="">
            <p style="text-align:center;" class="mb-0">After waiting, came large one.</p>
          </a>
        </div>
      </div>
    </div>
  </section>



<!-- Activities Information -->

<section class="camping information" id="camping info" style="text-align:center;">
      <div class="my-3 p-3 bg-white rounded box-shadow">
        <h4 class="border-bottom border-gray pb-2 mb-0">Activity Information</h4>
        <div class="media text-muted pt-3">
          <img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1" alt="" class="mr-2 rounded">
          <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
            <div class="d-flex justify-content-between align-items-center w-100">
              <strong class="text-gray-dark">Camping Information</strong>
              <a href="#">top</a>
            </div>
            <br></br>
            <span class="d-block">
             <img class="img-fluid" src="http://www.earlyadopter.co.kr/wp-content/uploads/2014/06/1.jpg" alt="">
             
               <h1>Camping weather</h1>
   				 <h2> - 날씨 예보 </h2>

			    <div class="ctemp">현재 기온 : </div>
			    <span id="press"></span>
			    <span id="humidity"></span>
			    <span id="feels_like"></span>
			    <span id="clouds"></span>
			
			    <div class="clowtemp">최저 기온 : </div>
			    <div class="chightemp">최고 기온 : </div>
			    <div class="pressure">기압 : </div>
			    <div class="humidity">습도 : </div>
			    <div class="feels_like">체감 기온 : </div>
			    <div class="clouds">구름찡 : </div>
			    <div class="wind">바람 : </div>
			    <div class="cicon">아이콘 : </div>
			            </span>
			          </div>
			        </div>
			 </section>
 
 
 
 <section class="paragliding information" id="paragliding info" style="text-align:center;">      
        <div class="media text-muted pt-3">
          <img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1" alt="" class="mr-2 rounded">
          <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
            <div class="d-flex justify-content-between align-items-center w-100">
              <strong class="text-gray-dark">Paragliding Information</strong>
              <a href="#">top</a>
            </div>
            <br></br>
            <span class="d-block">
            
            <img class="img-fluid" src="http://withu.seacretdirect.kr/wp-content/uploads/2016/07/seacret_vol10_sky02.png" alt="">
            
               <h1>Paragliding weather</h1>
   				 <h2> - 날씨 예보 </h2>
   				 
 				<div class="ctemp">현재 기온 :</div>
			    <span id="press"></span>
			    <span id="humidity"></span>
			    <span id="feels_like"></span>
			    <span id="clouds"></span>
			
			    <div class="clowtemp">최저 기온 : </div>
			    <div class="chightemp">최고 기온 : </div>
			    <div class="pressure">기압 : </div>
			    <div class="humidity">습도 : </div>
			    <div class="feels_like">체감 기온 : </div>
			    <div class="clouds">구름찡 : </div>
			    <div class="wind">바람 : </div>
			    <div class="cicon">아이콘 : </div>
			            </span>
			          </div>
			        </div>
			 </section>



<section class="drone information" id="drone info" style="text-align:center;">        
        <div class="media text-muted pt-3">
          <img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1" alt="" class="mr-2 rounded">
          <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
            <div class="d-flex justify-content-between align-items-center w-100">
              <strong class="text-gray-dark">Drone Information</strong>
              <a href="#">top</a>
            </div>
            <br></br>
            <span class="d-block">
            
           <img class="img-fluid" src="https://steemitimages.com/0x0/https://ipfs.busy.org/ipfs/QmX2za9wfbQignsRvFykR4WgL1vQabzjBwqdruPSNWart2" alt=""> 
            
            
               <h1>Drone weather</h1>
   				 <h2> - 날씨 예보 </h2>
   				 
 				<div class="ctemp">현재 기온 : </div>
			    <span id="press"></span>
			    <span id="humidity"></span>
			    <span id="feels_like"></span>
			    <span id="clouds"></span>
			
			    <div class="clowtemp">최저 기온 : </div>
			    <div class="chightemp">최고 기온 : </div>
			    <div class="pressure">기압 : </div>
			    <div class="humidity">습도 : </div>
			    <div class="feels_like">체감 기온 : </div>
			    <div class="clouds">구름찡 : </div>
			    <div class="wind">바람 : </div>
			    <div class="cicon">아이콘 : </div>
			            </span>
			          </div>
			        </div>
			 </section>        
        


<section class="fishing information" id="fishing info" style="text-align:center;">        
        <div class="media text-muted pt-3">
          <img data-src="holder.js/32x32?theme=thumb&bg=007bff&fg=007bff&size=1" alt="" class="mr-2 rounded">
          <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
            <div class="d-flex justify-content-between align-items-center w-100">
              <strong class="text-gray-dark">Fishing Information</strong>
              <a href="#">top</a>
            </div>
            <br></br>
            <span class="d-block">

            <img class="img-fluid" src="https://blog.hmgjournal.com/images/contents/article/20161122-Reissue-winter-fishing-01.jpg" alt="">
            
            
               <h1>Fishing weather</h1>
   				 <h2> - 날씨 예보 </h2>
 				<div class="ctemp">현재 기온 : </div>
			    <span id="press"></span>
			    <span id="humidity"></span>
			    <span id="feels_like"></span>
			    <span id="clouds"></span>
			
			    <div class="clowtemp">최저 기온 : </div>
			    <div class="chightemp">최고 기온 : </div>
			    <div class="pressure">기압 : </div>
			    <div class="humidity">습도 : </div>
			    <div class="feels_like">체감 기온 : </div>
			    <div class="clouds">구름찡 : </div>
			    <div class="wind">바람 : </div>
			    <div class="cicon">아이콘 : </div>
			            </span>
			          </div>
			        </div>
			 </section>       


        <small class="d-block text-right mt-3">
          <a href="#">All suggestions</a>
        </small>
      </div>
    </main>



	<!-- 메인 컨텐트 끝 -->



	<!-- 푸터 시작 -->
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
	<!-- 푸터 끝 -->
	

	
</body>
</html>