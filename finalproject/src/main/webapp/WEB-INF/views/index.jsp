<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- 추가할부분 -->
 <meta http-equiv="X-UA-Compatible" content="ie=edge"> <!-- 추가할부분 -->
<title>Animal</title>
<style type="text/css">
@import url("https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap");
/**
* get random number.
* @param {number} min - min number.
* @param {number} max - max number.
*/
/*
* variable
*/



.slider_area {
  height: 100vh;
  width: 100vw;
     background-image: url(../img/allanimals.jpg);
}
.single_slider slider_bg_1 d-flex align-items-center {
  font-family: 'Montserrat', sans-serif;
  background: #fff;
  position: relative;
  overflow: hidden;
  font-size: 100%;
  text-align: center;

}
.criterion {
  font-size: 1.6rem;
  position: absolute;
  top: 50%;
  left: 50%;
  height: 0;
  width: 0;
  transform: translate(-20px, -20px);
}
/*
* background
*/
.background {
  position: absolute;
  top: 0;
  height: 100vh;
  width: 0;
  -webkit-animation: background-animation 2s ease-in-out 4s 1 normal forwards;
          animation: background-animation 2s ease-in-out 4s 1 normal forwards;
}
.background0 {
  left: 0%;
  height: 100vh;
  background-color: #eb4747;
}
.background1 {
  left: 12.5%;
  height: 100vh;
  background-color: #ebc247;
}
.background2 {
  left: 25%;
  height: 100vh;
  background-color: #99eb47;
}
.background3 {
  left: 37.5%;
  height: 100vh;
  background-color: #47eb70;
}
.background4 {
  left: 50%;
  height: 100vh;
  background-color: #47ebeb;
}
.background5 {
  left: 62.5%;
  height: 100vh;
  background-color: #4770eb;
}
.background6 {
  left: 75%;
  height: 100vh;
  background-color: #9947eb;
}
.background7 {
  left: 87.5%;
  height: 100vh;
  background-color: #eb47c2;
}
.background8 {
  left: 100%;
  height: 100vh;
  background-color: #eb4747;
}
/*
* text
*/
.text {
  position: absolute;
  width: 40px;
  line-height: 40px;
  opacity: 0;
  overflow: hidden;
}
.text::after {
  z-index: -1;
  content: '';
  display: inline-block;
  position: absolute;
  top: 0;
  left: 0;
  width: 0;
  height: 40px;
}
.text0 {
  left: -140px;
  top: 0;
  -webkit-animation: text-animation0 1s ease-in-out 1s 1 normal forwards, text2-animation0 2s ease-in-out 5s 1 normal forwards;
          animation: text-animation0 1s ease-in-out 1s 1 normal forwards, text2-animation0 2s ease-in-out 5s 1 normal forwards;
}
.text0::after {
  -webkit-animation: text-after-animation0 2s ease-in-out 3s 1 normal forwards;
          animation: text-after-animation0 2s ease-in-out 3s 1 normal forwards;
}
.text1 {
  left: -100px;
  top: 0;
  -webkit-animation: text-animation1 1s ease-in-out 1.2s 1 normal forwards, text2-animation1 2s ease-in-out 5s 1 normal forwards;
          animation: text-animation1 1s ease-in-out 1.2s 1 normal forwards, text2-animation1 2s ease-in-out 5s 1 normal forwards;
}
.text1::after {
  -webkit-animation: text-after-animation1 2s ease-in-out 3s 1 normal forwards;
          animation: text-after-animation1 2s ease-in-out 3s 1 normal forwards;
}
.text2 {
  left: -60px;
  top: 0;
  -webkit-animation: text-animation2 1s ease-in-out 1.4s 1 normal forwards, text2-animation2 2s ease-in-out 5s 1 normal forwards;
          animation: text-animation2 1s ease-in-out 1.4s 1 normal forwards, text2-animation2 2s ease-in-out 5s 1 normal forwards;
}
.text2::after {
  -webkit-animation: text-after-animation2 2s ease-in-out 3s 1 normal forwards;
          animation: text-after-animation2 2s ease-in-out 3s 1 normal forwards;
}
.text3 {
  left: -20px;
  top: 0;
  -webkit-animation: text-animation3 1s ease-in-out 1.6s 1 normal forwards, text2-animation3 2s ease-in-out 5s 1 normal forwards;
          animation: text-animation3 1s ease-in-out 1.6s 1 normal forwards, text2-animation3 2s ease-in-out 5s 1 normal forwards;
}
.text3::after {
  -webkit-animation: text-after-animation3 2s ease-in-out 3s 1 normal forwards;
          animation: text-after-animation3 2s ease-in-out 3s 1 normal forwards;
}
.text4 {
  left: 20px;
  top: 0;
  -webkit-animation: text-animation4 1s ease-in-out 1.8s 1 normal forwards, text2-animation4 2s ease-in-out 5s 1 normal forwards;
          animation: text-animation4 1s ease-in-out 1.8s 1 normal forwards, text2-animation4 2s ease-in-out 5s 1 normal forwards;
}
.text4::after {
  -webkit-animation: text-after-animation4 2s ease-in-out 3s 1 normal forwards;
          animation: text-after-animation4 2s ease-in-out 3s 1 normal forwards;
}
.text5 {
  left: 60px;
  top: 0;
  -webkit-animation: text-animation5 1s ease-in-out 2s 1 normal forwards, text2-animation5 2s ease-in-out 5s 1 normal forwards;
          animation: text-animation5 1s ease-in-out 2s 1 normal forwards, text2-animation5 2s ease-in-out 5s 1 normal forwards;
}
.text5::after {
  -webkit-animation: text-after-animation5 2s ease-in-out 3s 1 normal forwards;
          animation: text-after-animation5 2s ease-in-out 3s 1 normal forwards;
}
.text6 {
  left: 100px;
  top: 0;
  -webkit-animation: text-animation6 1s ease-in-out 2.2s 1 normal forwards, text2-animation6 2s ease-in-out 5s 1 normal forwards;
          animation: text-animation6 1s ease-in-out 2.2s 1 normal forwards, text2-animation6 2s ease-in-out 5s 1 normal forwards;
}
.text6::after {
  -webkit-animation: text-after-animation6 2s ease-in-out 3s 1 normal forwards;
          animation: text-after-animation6 2s ease-in-out 3s 1 normal forwards;
}
.text7 {
  left: 140px;
  top: 0;
  -webkit-animation: text-animation7 1s ease-in-out 2.4s 1 normal forwards, text2-animation7 2s ease-in-out 5s 1 normal forwards;
          animation: text-animation7 1s ease-in-out 2.4s 1 normal forwards, text2-animation7 2s ease-in-out 5s 1 normal forwards;
}
.text7::after {
  -webkit-animation: text-after-animation7 2s ease-in-out 3s 1 normal forwards;
          animation: text-after-animation7 2s ease-in-out 3s 1 normal forwards;
}
.text8 {
  left: 180px;
  top: 0;
  -webkit-animation: text-animation8 1s ease-in-out 2.6s 1 normal forwards, text2-animation8 2s ease-in-out 5s 1 normal forwards;
          animation: text-animation8 1s ease-in-out 2.6s 1 normal forwards, text2-animation8 2s ease-in-out 5s 1 normal forwards;
}
.text8::after {
  -webkit-animation: text-after-animation8 2s ease-in-out 3s 1 normal forwards;
          animation: text-after-animation8 2s ease-in-out 3s 1 normal forwards;
}
@-webkit-keyframes text-animation0 {
  0% {
    transform: scale(0, 0);
    opacity: 0;
  }
  50% {
    transform: scale(3, 3);
  }
  100% {
    transform: scale(1, 1);
    opacity: 1;
  }
}
@keyframes text-animation0 {
  0% {
    transform: scale(0, 0);
    opacity: 0;
  }
  50% {
    transform: scale(3, 3);
  }
  100% {
    transform: scale(1, 1);
    opacity: 1;
  }
}
@-webkit-keyframes text-animation1 {
  0% {
    transform: scale(0, 0);
    opacity: 0;
  }
  50% {
    transform: scale(3, 3);
  }
  100% {
    transform: scale(1, 1);
    opacity: 1;
  }
}
@keyframes text-animation1 {
  0% {
    transform: scale(0, 0);
    opacity: 0;
  }
  50% {
    transform: scale(3, 3);
  }
  100% {
    transform: scale(1, 1);
    opacity: 1;
  }
}
@-webkit-keyframes text-animation2 {
  0% {
    transform: scale(0, 0);
    opacity: 0;
  }
  50% {
    transform: scale(3, 3);
  }
  100% {
    transform: scale(1, 1);
    opacity: 1;
  }
}
@keyframes text-animation2 {
  0% {
    transform: scale(0, 0);
    opacity: 0;
  }
  50% {
    transform: scale(3, 3);
  }
  100% {
    transform: scale(1, 1);
    opacity: 1;
  }
}
@-webkit-keyframes text-animation3 {
  0% {
    transform: scale(0, 0);
    opacity: 0;
  }
  50% {
    transform: scale(3, 3);
  }
  100% {
    transform: scale(1, 1);
    opacity: 1;
  }
}
@keyframes text-animation3 {
  0% {
    transform: scale(0, 0);
    opacity: 0;
  }
  50% {
    transform: scale(3, 3);
  }
  100% {
    transform: scale(1, 1);
    opacity: 1;
  }
}
@-webkit-keyframes text-animation4 {
  0% {
    transform: scale(0, 0);
    opacity: 0;
  }
  50% {
    transform: scale(3, 3);
  }
  100% {
    transform: scale(1, 1);
    opacity: 1;
  }
}
@keyframes text-animation4 {
  0% {
    transform: scale(0, 0);
    opacity: 0;
  }
  50% {
    transform: scale(3, 3);
  }
  100% {
    transform: scale(1, 1);
    opacity: 1;
  }
}
@-webkit-keyframes text-animation5 {
  0% {
    transform: scale(0, 0);
    opacity: 0;
  }
  50% {
    transform: scale(3, 3);
  }
  100% {
    transform: scale(1, 1);
    opacity: 1;
  }
}
@keyframes text-animation5 {
  0% {
    transform: scale(0, 0);
    opacity: 0;
  }
  50% {
    transform: scale(3, 3);
  }
  100% {
    transform: scale(1, 1);
    opacity: 1;
  }
}
@-webkit-keyframes text-animation6 {
  0% {
    transform: scale(0, 0);
    opacity: 0;
  }
  50% {
    transform: scale(3, 3);
  }
  100% {
    transform: scale(1, 1);
    opacity: 1;
  }
}
@keyframes text-animation6 {
  0% {
    transform: scale(0, 0);
    opacity: 0;
  }
  50% {
    transform: scale(3, 3);
  }
  100% {
    transform: scale(1, 1);
    opacity: 1;
  }
}
@-webkit-keyframes text-animation7 {
  0% {
    transform: scale(0, 0);
    opacity: 0;
  }
  50% {
    transform: scale(3, 3);
  }
  100% {
    transform: scale(1, 1);
    opacity: 1;
  }
}
@keyframes text-animation7 {
  0% {
    transform: scale(0, 0);
    opacity: 0;
  }
  50% {
    transform: scale(3, 3);
  }
  100% {
    transform: scale(1, 1);
    opacity: 1;
  }
}
@-webkit-keyframes text-animation8 {
  0% {
    transform: scale(0, 0);
    opacity: 0;
  }
  50% {
    transform: scale(3, 3);
  }
  100% {
    transform: scale(1, 1);
    opacity: 1;
  }
}
@keyframes text-animation8 {
  0% {
    transform: scale(0, 0);
    opacity: 0;
  }
  50% {
    transform: scale(3, 3);
  }
  100% {
    transform: scale(1, 1);
    opacity: 1;
  }
}
@-webkit-keyframes text-after-animation0 {
  0% {
    width: 0px;
    background-color: #eb4747;
    opacity: 1;
  }
  50% {
    width: 40px;
    opacity: 1;
  }
  100% {
    left: 40px;
    opacity: 0;
  }
}
@keyframes text-after-animation0 {
  0% {
    width: 0px;
    background-color: #eb4747;
    opacity: 1;
  }
  50% {
    width: 40px;
    opacity: 1;
  }
  100% {
    left: 40px;
    opacity: 0;
  }
}
@-webkit-keyframes text-after-animation1 {
  0% {
    width: 0px;
    background-color: #ebc247;
    opacity: 1;
  }
  50% {
    width: 40px;
    opacity: 1;
  }
  100% {
    left: 40px;
    opacity: 0;
  }
}
@keyframes text-after-animation1 {
  0% {
    width: 0px;
    background-color: #ebc247;
    opacity: 1;
  }
  50% {
    width: 40px;
    opacity: 1;
  }
  100% {
    left: 40px;
    opacity: 0;
  }
}
@-webkit-keyframes text-after-animation2 {
  0% {
    width: 0px;
    background-color: #99eb47;
    opacity: 1;
  }
  50% {
    width: 40px;
    opacity: 1;
  }
  100% {
    left: 40px;
    opacity: 0;
  }
}
@keyframes text-after-animation2 {
  0% {
    width: 0px;
    background-color: #99eb47;
    opacity: 1;
  }
  50% {
    width: 40px;
    opacity: 1;
  }
  100% {
    left: 40px;
    opacity: 0;
  }
}
@-webkit-keyframes text-after-animation3 {
  0% {
    width: 0px;
    background-color: #47eb70;
    opacity: 1;
  }
  50% {
    width: 40px;
    opacity: 1;
  }
  100% {
    left: 40px;
    opacity: 0;
  }
}
@keyframes text-after-animation3 {
  0% {
    width: 0px;
    background-color: #47eb70;
    opacity: 1;
  }
  50% {
    width: 40px;
    opacity: 1;
  }
  100% {
    left: 40px;
    opacity: 0;
  }
}
@-webkit-keyframes text-after-animation4 {
  0% {
    width: 0px;
    background-color: #47ebeb;
    opacity: 1;
  }
  50% {
    width: 40px;
    opacity: 1;
  }
  100% {
    left: 40px;
    opacity: 0;
  }
}
@keyframes text-after-animation4 {
  0% {
    width: 0px;
    background-color: #47ebeb;
    opacity: 1;
  }
  50% {
    width: 40px;
    opacity: 1;
  }
  100% {
    left: 40px;
    opacity: 0;
  }
}
@-webkit-keyframes text-after-animation5 {
  0% {
    width: 0px;
    background-color: #4770eb;
    opacity: 1;
  }
  50% {
    width: 40px;
    opacity: 1;
  }
  100% {
    left: 40px;
    opacity: 0;
  }
}
@keyframes text-after-animation5 {
  0% {
    width: 0px;
    background-color: #4770eb;
    opacity: 1;
  }
  50% {
    width: 40px;
    opacity: 1;
  }
  100% {
    left: 40px;
    opacity: 0;
  }
}
@-webkit-keyframes text-after-animation6 {
  0% {
    width: 0px;
    background-color: #9947eb;
    opacity: 1;
  }
  50% {
    width: 40px;
    opacity: 1;
  }
  100% {
    left: 40px;
    opacity: 0;
  }
}
@keyframes text-after-animation6 {
  0% {
    width: 0px;
    background-color: #9947eb;
    opacity: 1;
  }
  50% {
    width: 40px;
    opacity: 1;
  }
  100% {
    left: 40px;
    opacity: 0;
  }
}
@-webkit-keyframes text-after-animation7 {
  0% {
    width: 0px;
    background-color: #eb47c2;
    opacity: 1;
  }
  50% {
    width: 40px;
    opacity: 1;
  }
  100% {
    left: 40px;
    opacity: 0;
  }
}
@keyframes text-after-animation7 {
  0% {
    width: 0px;
    background-color: #eb47c2;
    opacity: 1;
  }
  50% {
    width: 40px;
    opacity: 1;
  }
  100% {
    left: 40px;
    opacity: 0;
  }
}
@-webkit-keyframes text-after-animation8 {
  0% {
    width: 0px;
    background-color: #eb4747;
    opacity: 1;
  }
  50% {
    width: 40px;
    opacity: 1;
  }
  100% {
    left: 40px;
    opacity: 0;
  }
}
@keyframes text-after-animation8 {
  0% {
    width: 0px;
    background-color: #eb4747;
    opacity: 1;
  }
  50% {
    width: 40px;
    opacity: 1;
  }
  100% {
    left: 40px;
    opacity: 0;
  }
}
@-webkit-keyframes text2-animation0 {
  0% {
    left: -140px;
    opacity: 1;
  }
  50% {
    left: -100px;
    opacity: 0;
  }
  100% {
    left: -100px;
    opacity: 0;
  }
}
@keyframes text2-animation0 {
  0% {
    left: -140px;
    opacity: 1;
  }
  50% {
    left: -100px;
    opacity: 0;
  }
  100% {
    left: -100px;
    opacity: 0;
  }
}
@-webkit-keyframes text2-animation1 {
  0% {
    left: -100px;
    opacity: 1;
  }
  50% {
    left: -60px;
    opacity: 0;
  }
  100% {
    left: -60px;
    opacity: 0;
  }
}
@keyframes text2-animation1 {
  0% {
    left: -100px;
    opacity: 1;
  }
  50% {
    left: -60px;
    opacity: 0;
  }
  100% {
    left: -60px;
    opacity: 0;
  }
}
@-webkit-keyframes text2-animation2 {
  0% {
    left: -60px;
    opacity: 1;
  }
  50% {
    left: -20px;
    opacity: 0;
  }
  100% {
    left: -20px;
    opacity: 0;
  }
}
@keyframes text2-animation2 {
  0% {
    left: -60px;
    opacity: 1;
  }
  50% {
    left: -20px;
    opacity: 0;
  }
  100% {
    left: -20px;
    opacity: 0;
  }
}
@-webkit-keyframes text2-animation3 {
  0% {
    left: -20px;
    opacity: 1;
  }
  50% {
    left: 20px;
    opacity: 0;
  }
  100% {
    left: 20px;
    opacity: 0;
  }
}
@keyframes text2-animation3 {
  0% {
    left: -20px;
    opacity: 1;
  }
  50% {
    left: 20px;
    opacity: 0;
  }
  100% {
    left: 20px;
    opacity: 0;
  }
}
@-webkit-keyframes text2-animation4 {
  0% {
    left: 20px;
    opacity: 1;
  }
  50% {
    left: 60px;
    opacity: 0;
  }
  100% {
    left: 60px;
    opacity: 0;
  }
}
@keyframes text2-animation4 {
  0% {
    left: 20px;
    opacity: 1;
  }
  50% {
    left: 60px;
    opacity: 0;
  }
  100% {
    left: 60px;
    opacity: 0;
  }
}
@-webkit-keyframes text2-animation5 {
  0% {
    left: 60px;
    opacity: 1;
  }
  50% {
    left: 100px;
    opacity: 0;
  }
  100% {
    left: 100px;
    opacity: 0;
  }
}
@keyframes text2-animation5 {
  0% {
    left: 60px;
    opacity: 1;
  }
  50% {
    left: 100px;
    opacity: 0;
  }
  100% {
    left: 100px;
    opacity: 0;
  }
}
@-webkit-keyframes text2-animation6 {
  0% {
    left: 100px;
    opacity: 1;
  }
  50% {
    left: 140px;
    opacity: 0;
  }
  100% {
    left: 140px;
    opacity: 0;
  }
}
@keyframes text2-animation6 {
  0% {
    left: 100px;
    opacity: 1;
  }
  50% {
    left: 140px;
    opacity: 0;
  }
  100% {
    left: 140px;
    opacity: 0;
  }
}
@-webkit-keyframes text2-animation7 {
  0% {
    left: 140px;
    opacity: 1;
    top: 0;
    transform: scale(1, 1);
  }
  50% {
    left: 180px;
    opacity: 1;
    transform: scale(1, 1);
  }
  65% {
    top: 0;
    transform: scale(1, 1);
  }
  70% {
    transform: scale(3, 3) rotate(90deg);
    top: -30px;
  }
  75% {
    left: 180px;
    top: 0;
    opacity: 1;
    transform: scale(2, 2) rotate(90deg);
  }
  85% {
    left: 180px;
  }
  100% {
    left: 1000px;
    opacity: 0;
    transform: scale(2, 2) rotate(90deg);
  }
}
@keyframes text2-animation7 {
  0% {
    left: 140px;
    opacity: 1;
    top: 0;
    transform: scale(1, 1);
  }
  50% {
    left: 180px;
    opacity: 1;
    transform: scale(1, 1);
  }
  65% {
    top: 0;
    transform: scale(1, 1);
  }
  70% {
    transform: scale(3, 3) rotate(90deg);
    top: -30px;
  }
  75% {
    left: 180px;
    top: 0;
    opacity: 1;
    transform: scale(2, 2) rotate(90deg);
  }
  85% {
    left: 180px;
  }
  100% {
    left: 1000px;
    opacity: 0;
    transform: scale(2, 2) rotate(90deg);
  }
}
@-webkit-keyframes text2-animation8 {
  0% {
    left: 180px;
    opacity: 1;
  }
  50% {
    left: 220px;
    opacity: 0;
  }
  100% {
    left: 220px;
    opacity: 0;
  }
}
@keyframes text2-animation8 {
  0% {
    left: 180px;
    opacity: 1;
  }
  50% {
    left: 220px;
    opacity: 0;
  }
  100% {
    left: 220px;
    opacity: 0;
  }
}
/*
* frame
*/
.frame {
  position: absolute;
  width: 40px;
  height: 40px;
  border-radius: 50%;
  opacity: 0;
}
.frame0 {
  left: -140px;
  top: 0;
  -webkit-animation: frame-animation0 1s ease-in-out 0ms 1 normal forwards;
          animation: frame-animation0 1s ease-in-out 0ms 1 normal forwards;
  background-color: #eb4747;
}
.frame1 {
  left: -100px;
  top: 0;
  -webkit-animation: frame-animation1 1s ease-in-out 200ms 1 normal forwards;
          animation: frame-animation1 1s ease-in-out 200ms 1 normal forwards;
  background-color: #ebc247;
}
.frame2 {
  left: -60px;
  top: 0;
  -webkit-animation: frame-animation2 1s ease-in-out 400ms 1 normal forwards;
          animation: frame-animation2 1s ease-in-out 400ms 1 normal forwards;
  background-color: #99eb47;
}
.frame3 {
  left: -20px;
  top: 0;
  -webkit-animation: frame-animation3 1s ease-in-out 600ms 1 normal forwards;
          animation: frame-animation3 1s ease-in-out 600ms 1 normal forwards;
  background-color: #47eb70;
}
.frame4 {
  left: 20px;
  top: 0;
  -webkit-animation: frame-animation4 1s ease-in-out 800ms 1 normal forwards;
          animation: frame-animation4 1s ease-in-out 800ms 1 normal forwards;
  background-color: #47ebeb;
}
.frame5 {
  left: 60px;
  top: 0;
  -webkit-animation: frame-animation5 1s ease-in-out 1000ms 1 normal forwards;
          animation: frame-animation5 1s ease-in-out 1000ms 1 normal forwards;
  background-color: #4770eb;
}
.frame6 {
  left: 100px;
  top: 0;
  -webkit-animation: frame-animation6 1s ease-in-out 1200ms 1 normal forwards;
          animation: frame-animation6 1s ease-in-out 1200ms 1 normal forwards;
  background-color: #9947eb;
}
.frame7 {
  left: 140px;
  top: 0;
  -webkit-animation: frame-animation7 1s ease-in-out 1400ms 1 normal forwards;
          animation: frame-animation7 1s ease-in-out 1400ms 1 normal forwards;
  background-color: #eb47c2;
}
.frame8 {
  left: 180px;
  top: 0;
  -webkit-animation: frame-animation8 1s ease-in-out 1600ms 1 normal forwards;
          animation: frame-animation8 1s ease-in-out 1600ms 1 normal forwards;
  background-color: #eb4747;
}
@-webkit-keyframes frame-animation0 {
  0% {
    transform: translateY(-1000px);
    opacity: 1;
  }
  50% {
    opacity: 0.8;
  }
  100% {
    transform: translateY(0);
    opacity: 0;
  }
}
@keyframes frame-animation0 {
  0% {
    transform: translateY(-1000px);
    opacity: 1;
  }
  50% {
    opacity: 0.8;
  }
  100% {
    transform: translateY(0);
    opacity: 0;
  }
}
@-webkit-keyframes frame-animation1 {
  0% {
    transform: translateY(-1000px);
    opacity: 1;
  }
  50% {
    opacity: 0.8;
  }
  100% {
    transform: translateY(0);
    opacity: 0;
  }
}
@keyframes frame-animation1 {
  0% {
    transform: translateY(-1000px);
    opacity: 1;
  }
  50% {
    opacity: 0.8;
  }
  100% {
    transform: translateY(0);
    opacity: 0;
  }
}
@-webkit-keyframes frame-animation2 {
  0% {
    transform: translateY(-1000px);
    opacity: 1;
  }
  50% {
    opacity: 0.8;
  }
  100% {
    transform: translateY(0);
    opacity: 0;
  }
}
@keyframes frame-animation2 {
  0% {
    transform: translateY(-1000px);
    opacity: 1;
  }
  50% {
    opacity: 0.8;
  }
  100% {
    transform: translateY(0);
    opacity: 0;
  }
}
@-webkit-keyframes frame-animation3 {
  0% {
    transform: translateY(-1000px);
    opacity: 1;
  }
  50% {
    opacity: 0.8;
  }
  100% {
    transform: translateY(0);
    opacity: 0;
  }
}
@keyframes frame-animation3 {
  0% {
    transform: translateY(-1000px);
    opacity: 1;
  }
  50% {
    opacity: 0.8;
  }
  100% {
    transform: translateY(0);
    opacity: 0;
  }
}
@-webkit-keyframes frame-animation4 {
  0% {
    transform: translateY(-1000px);
    opacity: 1;
  }
  50% {
    opacity: 0.8;
  }
  100% {
    transform: translateY(0);
    opacity: 0;
  }
}
@keyframes frame-animation4 {
  0% {
    transform: translateY(-1000px);
    opacity: 1;
  }
  50% {
    opacity: 0.8;
  }
  100% {
    transform: translateY(0);
    opacity: 0;
  }
}
@-webkit-keyframes frame-animation5 {
  0% {
    transform: translateY(-1000px);
    opacity: 1;
  }
  50% {
    opacity: 0.8;
  }
  100% {
    transform: translateY(0);
    opacity: 0;
  }
}
@keyframes frame-animation5 {
  0% {
    transform: translateY(-1000px);
    opacity: 1;
  }
  50% {
    opacity: 0.8;
  }
  100% {
    transform: translateY(0);
    opacity: 0;
  }
}
@-webkit-keyframes frame-animation6 {
  0% {
    transform: translateY(-1000px);
    opacity: 1;
  }
  50% {
    opacity: 0.8;
  }
  100% {
    transform: translateY(0);
    opacity: 0;
  }
}
@keyframes frame-animation6 {
  0% {
    transform: translateY(-1000px);
    opacity: 1;
  }
  50% {
    opacity: 0.8;
  }
  100% {
    transform: translateY(0);
    opacity: 0;
  }
}
@-webkit-keyframes frame-animation7 {
  0% {
    transform: translateY(-1000px);
    opacity: 1;
  }
  50% {
    opacity: 0.8;
  }
  100% {
    transform: translateY(0);
    opacity: 0;
  }
}
@keyframes frame-animation7 {
  0% {
    transform: translateY(-1000px);
    opacity: 1;
  }
  50% {
    opacity: 0.8;
  }
  100% {
    transform: translateY(0);
    opacity: 0;
  }
}
@-webkit-keyframes frame-animation8 {
  0% {
    transform: translateY(-1000px);
    opacity: 1;
  }
  50% {
    opacity: 0.8;
  }
  100% {
    transform: translateY(0);
    opacity: 0;
  }
}
@keyframes frame-animation8 {
  0% {
    transform: translateY(-1000px);
    opacity: 1;
  }
  50% {
    opacity: 0.8;
  }
  100% {
    transform: translateY(0);
    opacity: 0;
  }
}
/*
* particle
*/
.particle {
  position: absolute;
  width: 40px;
  height: 40px;
  border-radius: 50%;
}
.particle00 {
  left: -140px;
  opacity: 0;
  background-color: #eb4747;
  -webkit-animation: particle-animation00 1s ease-in-out 1s 1 normal forwards;
          animation: particle-animation00 1s ease-in-out 1s 1 normal forwards;
}
.particle01 {
  left: -140px;
  opacity: 0;
  background-color: #eb4747;
  -webkit-animation: particle-animation01 1s ease-in-out 1s 1 normal forwards;
          animation: particle-animation01 1s ease-in-out 1s 1 normal forwards;
}
.particle02 {
  left: -140px;
  opacity: 0;
  background-color: #eb4747;
  -webkit-animation: particle-animation02 1s ease-in-out 1s 1 normal forwards;
          animation: particle-animation02 1s ease-in-out 1s 1 normal forwards;
}
.particle03 {
  left: -140px;
  opacity: 0;
  background-color: #eb4747;
  -webkit-animation: particle-animation03 1s ease-in-out 1s 1 normal forwards;
          animation: particle-animation03 1s ease-in-out 1s 1 normal forwards;
}
.particle04 {
  left: -140px;
  opacity: 0;
  background-color: #eb4747;
  -webkit-animation: particle-animation04 1s ease-in-out 1s 1 normal forwards;
          animation: particle-animation04 1s ease-in-out 1s 1 normal forwards;
}
.particle05 {
  left: -140px;
  opacity: 0;
  background-color: #eb4747;
  -webkit-animation: particle-animation05 1s ease-in-out 1s 1 normal forwards;
          animation: particle-animation05 1s ease-in-out 1s 1 normal forwards;
}
.particle06 {
  left: -140px;
  opacity: 0;
  background-color: #eb4747;
  -webkit-animation: particle-animation06 1s ease-in-out 1s 1 normal forwards;
          animation: particle-animation06 1s ease-in-out 1s 1 normal forwards;
}
.particle07 {
  left: -140px;
  opacity: 0;
  background-color: #eb4747;
  -webkit-animation: particle-animation07 1s ease-in-out 1s 1 normal forwards;
          animation: particle-animation07 1s ease-in-out 1s 1 normal forwards;
}
.particle08 {
  left: -140px;
  opacity: 0;
  background-color: #eb4747;
  -webkit-animation: particle-animation08 1s ease-in-out 1s 1 normal forwards;
          animation: particle-animation08 1s ease-in-out 1s 1 normal forwards;
}
.particle09 {
  left: -140px;
  opacity: 0;
  background-color: #eb4747;
  -webkit-animation: particle-animation09 1s ease-in-out 1s 1 normal forwards;
          animation: particle-animation09 1s ease-in-out 1s 1 normal forwards;
}
.particle010 {
  left: -140px;
  opacity: 0;
  background-color: #eb4747;
  -webkit-animation: particle-animation010 1s ease-in-out 1s 1 normal forwards;
          animation: particle-animation010 1s ease-in-out 1s 1 normal forwards;
}
.particle011 {
  left: -140px;
  opacity: 0;
  background-color: #eb4747;
  -webkit-animation: particle-animation011 1s ease-in-out 1s 1 normal forwards;
          animation: particle-animation011 1s ease-in-out 1s 1 normal forwards;
}
.particle012 {
  left: -140px;
  opacity: 0;
  background-color: #eb4747;
  -webkit-animation: particle-animation012 1s ease-in-out 1s 1 normal forwards;
          animation: particle-animation012 1s ease-in-out 1s 1 normal forwards;
}
.particle10 {
  left: -100px;
  opacity: 0;
  background-color: #ebc247;
  -webkit-animation: particle-animation10 1s ease-in-out 1.2s 1 normal forwards;
          animation: particle-animation10 1s ease-in-out 1.2s 1 normal forwards;
}
.particle11 {
  left: -100px;
  opacity: 0;
  background-color: #ebc247;
  -webkit-animation: particle-animation11 1s ease-in-out 1.2s 1 normal forwards;
          animation: particle-animation11 1s ease-in-out 1.2s 1 normal forwards;
}
.particle12 {
  left: -100px;
  opacity: 0;
  background-color: #ebc247;
  -webkit-animation: particle-animation12 1s ease-in-out 1.2s 1 normal forwards;
          animation: particle-animation12 1s ease-in-out 1.2s 1 normal forwards;
}
.particle13 {
  left: -100px;
  opacity: 0;
  background-color: #ebc247;
  -webkit-animation: particle-animation13 1s ease-in-out 1.2s 1 normal forwards;
          animation: particle-animation13 1s ease-in-out 1.2s 1 normal forwards;
}
.particle14 {
  left: -100px;
  opacity: 0;
  background-color: #ebc247;
  -webkit-animation: particle-animation14 1s ease-in-out 1.2s 1 normal forwards;
          animation: particle-animation14 1s ease-in-out 1.2s 1 normal forwards;
}
.particle15 {
  left: -100px;
  opacity: 0;
  background-color: #ebc247;
  -webkit-animation: particle-animation15 1s ease-in-out 1.2s 1 normal forwards;
          animation: particle-animation15 1s ease-in-out 1.2s 1 normal forwards;
}
.particle16 {
  left: -100px;
  opacity: 0;
  background-color: #ebc247;
  -webkit-animation: particle-animation16 1s ease-in-out 1.2s 1 normal forwards;
          animation: particle-animation16 1s ease-in-out 1.2s 1 normal forwards;
}
.particle17 {
  left: -100px;
  opacity: 0;
  background-color: #ebc247;
  -webkit-animation: particle-animation17 1s ease-in-out 1.2s 1 normal forwards;
          animation: particle-animation17 1s ease-in-out 1.2s 1 normal forwards;
}
.particle18 {
  left: -100px;
  opacity: 0;
  background-color: #ebc247;
  -webkit-animation: particle-animation18 1s ease-in-out 1.2s 1 normal forwards;
          animation: particle-animation18 1s ease-in-out 1.2s 1 normal forwards;
}
.particle19 {
  left: -100px;
  opacity: 0;
  background-color: #ebc247;
  -webkit-animation: particle-animation19 1s ease-in-out 1.2s 1 normal forwards;
          animation: particle-animation19 1s ease-in-out 1.2s 1 normal forwards;
}
.particle110 {
  left: -100px;
  opacity: 0;
  background-color: #ebc247;
  -webkit-animation: particle-animation110 1s ease-in-out 1.2s 1 normal forwards;
          animation: particle-animation110 1s ease-in-out 1.2s 1 normal forwards;
}
.particle111 {
  left: -100px;
  opacity: 0;
  background-color: #ebc247;
  -webkit-animation: particle-animation111 1s ease-in-out 1.2s 1 normal forwards;
          animation: particle-animation111 1s ease-in-out 1.2s 1 normal forwards;
}
.particle112 {
  left: -100px;
  opacity: 0;
  background-color: #ebc247;
  -webkit-animation: particle-animation112 1s ease-in-out 1.2s 1 normal forwards;
          animation: particle-animation112 1s ease-in-out 1.2s 1 normal forwards;
}
.particle20 {
  left: -60px;
  opacity: 0;
  background-color: #99eb47;
  -webkit-animation: particle-animation20 1s ease-in-out 1.4s 1 normal forwards;
          animation: particle-animation20 1s ease-in-out 1.4s 1 normal forwards;
}
.particle21 {
  left: -60px;
  opacity: 0;
  background-color: #99eb47;
  -webkit-animation: particle-animation21 1s ease-in-out 1.4s 1 normal forwards;
          animation: particle-animation21 1s ease-in-out 1.4s 1 normal forwards;
}
.particle22 {
  left: -60px;
  opacity: 0;
  background-color: #99eb47;
  -webkit-animation: particle-animation22 1s ease-in-out 1.4s 1 normal forwards;
          animation: particle-animation22 1s ease-in-out 1.4s 1 normal forwards;
}
.particle23 {
  left: -60px;
  opacity: 0;
  background-color: #99eb47;
  -webkit-animation: particle-animation23 1s ease-in-out 1.4s 1 normal forwards;
          animation: particle-animation23 1s ease-in-out 1.4s 1 normal forwards;
}
.particle24 {
  left: -60px;
  opacity: 0;
  background-color: #99eb47;
  -webkit-animation: particle-animation24 1s ease-in-out 1.4s 1 normal forwards;
          animation: particle-animation24 1s ease-in-out 1.4s 1 normal forwards;
}
.particle25 {
  left: -60px;
  opacity: 0;
  background-color: #99eb47;
  -webkit-animation: particle-animation25 1s ease-in-out 1.4s 1 normal forwards;
          animation: particle-animation25 1s ease-in-out 1.4s 1 normal forwards;
}
.particle26 {
  left: -60px;
  opacity: 0;
  background-color: #99eb47;
  -webkit-animation: particle-animation26 1s ease-in-out 1.4s 1 normal forwards;
          animation: particle-animation26 1s ease-in-out 1.4s 1 normal forwards;
}
.particle27 {
  left: -60px;
  opacity: 0;
  background-color: #99eb47;
  -webkit-animation: particle-animation27 1s ease-in-out 1.4s 1 normal forwards;
          animation: particle-animation27 1s ease-in-out 1.4s 1 normal forwards;
}
.particle28 {
  left: -60px;
  opacity: 0;
  background-color: #99eb47;
  -webkit-animation: particle-animation28 1s ease-in-out 1.4s 1 normal forwards;
          animation: particle-animation28 1s ease-in-out 1.4s 1 normal forwards;
}
.particle29 {
  left: -60px;
  opacity: 0;
  background-color: #99eb47;
  -webkit-animation: particle-animation29 1s ease-in-out 1.4s 1 normal forwards;
          animation: particle-animation29 1s ease-in-out 1.4s 1 normal forwards;
}
.particle210 {
  left: -60px;
  opacity: 0;
  background-color: #99eb47;
  -webkit-animation: particle-animation210 1s ease-in-out 1.4s 1 normal forwards;
          animation: particle-animation210 1s ease-in-out 1.4s 1 normal forwards;
}
.particle211 {
  left: -60px;
  opacity: 0;
  background-color: #99eb47;
  -webkit-animation: particle-animation211 1s ease-in-out 1.4s 1 normal forwards;
          animation: particle-animation211 1s ease-in-out 1.4s 1 normal forwards;
}
.particle212 {
  left: -60px;
  opacity: 0;
  background-color: #99eb47;
  -webkit-animation: particle-animation212 1s ease-in-out 1.4s 1 normal forwards;
          animation: particle-animation212 1s ease-in-out 1.4s 1 normal forwards;
}
.particle30 {
  left: -20px;
  opacity: 0;
  background-color: #47eb70;
  -webkit-animation: particle-animation30 1s ease-in-out 1.6s 1 normal forwards;
          animation: particle-animation30 1s ease-in-out 1.6s 1 normal forwards;
}
.particle31 {
  left: -20px;
  opacity: 0;
  background-color: #47eb70;
  -webkit-animation: particle-animation31 1s ease-in-out 1.6s 1 normal forwards;
          animation: particle-animation31 1s ease-in-out 1.6s 1 normal forwards;
}
.particle32 {
  left: -20px;
  opacity: 0;
  background-color: #47eb70;
  -webkit-animation: particle-animation32 1s ease-in-out 1.6s 1 normal forwards;
          animation: particle-animation32 1s ease-in-out 1.6s 1 normal forwards;
}
.particle33 {
  left: -20px;
  opacity: 0;
  background-color: #47eb70;
  -webkit-animation: particle-animation33 1s ease-in-out 1.6s 1 normal forwards;
          animation: particle-animation33 1s ease-in-out 1.6s 1 normal forwards;
}
.particle34 {
  left: -20px;
  opacity: 0;
  background-color: #47eb70;
  -webkit-animation: particle-animation34 1s ease-in-out 1.6s 1 normal forwards;
          animation: particle-animation34 1s ease-in-out 1.6s 1 normal forwards;
}
.particle35 {
  left: -20px;
  opacity: 0;
  background-color: #47eb70;
  -webkit-animation: particle-animation35 1s ease-in-out 1.6s 1 normal forwards;
          animation: particle-animation35 1s ease-in-out 1.6s 1 normal forwards;
}
.particle36 {
  left: -20px;
  opacity: 0;
  background-color: #47eb70;
  -webkit-animation: particle-animation36 1s ease-in-out 1.6s 1 normal forwards;
          animation: particle-animation36 1s ease-in-out 1.6s 1 normal forwards;
}
.particle37 {
  left: -20px;
  opacity: 0;
  background-color: #47eb70;
  -webkit-animation: particle-animation37 1s ease-in-out 1.6s 1 normal forwards;
          animation: particle-animation37 1s ease-in-out 1.6s 1 normal forwards;
}
.particle38 {
  left: -20px;
  opacity: 0;
  background-color: #47eb70;
  -webkit-animation: particle-animation38 1s ease-in-out 1.6s 1 normal forwards;
          animation: particle-animation38 1s ease-in-out 1.6s 1 normal forwards;
}
.particle39 {
  left: -20px;
  opacity: 0;
  background-color: #47eb70;
  -webkit-animation: particle-animation39 1s ease-in-out 1.6s 1 normal forwards;
          animation: particle-animation39 1s ease-in-out 1.6s 1 normal forwards;
}
.particle310 {
  left: -20px;
  opacity: 0;
  background-color: #47eb70;
  -webkit-animation: particle-animation310 1s ease-in-out 1.6s 1 normal forwards;
          animation: particle-animation310 1s ease-in-out 1.6s 1 normal forwards;
}
.particle311 {
  left: -20px;
  opacity: 0;
  background-color: #47eb70;
  -webkit-animation: particle-animation311 1s ease-in-out 1.6s 1 normal forwards;
          animation: particle-animation311 1s ease-in-out 1.6s 1 normal forwards;
}
.particle312 {
  left: -20px;
  opacity: 0;
  background-color: #47eb70;
  -webkit-animation: particle-animation312 1s ease-in-out 1.6s 1 normal forwards;
          animation: particle-animation312 1s ease-in-out 1.6s 1 normal forwards;
}
.particle40 {
  left: 20px;
  opacity: 0;
  background-color: #47ebeb;
  -webkit-animation: particle-animation40 1s ease-in-out 1.8s 1 normal forwards;
          animation: particle-animation40 1s ease-in-out 1.8s 1 normal forwards;
}
.particle41 {
  left: 20px;
  opacity: 0;
  background-color: #47ebeb;
  -webkit-animation: particle-animation41 1s ease-in-out 1.8s 1 normal forwards;
          animation: particle-animation41 1s ease-in-out 1.8s 1 normal forwards;
}
.particle42 {
  left: 20px;
  opacity: 0;
  background-color: #47ebeb;
  -webkit-animation: particle-animation42 1s ease-in-out 1.8s 1 normal forwards;
          animation: particle-animation42 1s ease-in-out 1.8s 1 normal forwards;
}
.particle43 {
  left: 20px;
  opacity: 0;
  background-color: #47ebeb;
  -webkit-animation: particle-animation43 1s ease-in-out 1.8s 1 normal forwards;
          animation: particle-animation43 1s ease-in-out 1.8s 1 normal forwards;
}
.particle44 {
  left: 20px;
  opacity: 0;
  background-color: #47ebeb;
  -webkit-animation: particle-animation44 1s ease-in-out 1.8s 1 normal forwards;
          animation: particle-animation44 1s ease-in-out 1.8s 1 normal forwards;
}
.particle45 {
  left: 20px;
  opacity: 0;
  background-color: #47ebeb;
  -webkit-animation: particle-animation45 1s ease-in-out 1.8s 1 normal forwards;
          animation: particle-animation45 1s ease-in-out 1.8s 1 normal forwards;
}
.particle46 {
  left: 20px;
  opacity: 0;
  background-color: #47ebeb;
  -webkit-animation: particle-animation46 1s ease-in-out 1.8s 1 normal forwards;
          animation: particle-animation46 1s ease-in-out 1.8s 1 normal forwards;
}
.particle47 {
  left: 20px;
  opacity: 0;
  background-color: #47ebeb;
  -webkit-animation: particle-animation47 1s ease-in-out 1.8s 1 normal forwards;
          animation: particle-animation47 1s ease-in-out 1.8s 1 normal forwards;
}
.particle48 {
  left: 20px;
  opacity: 0;
  background-color: #47ebeb;
  -webkit-animation: particle-animation48 1s ease-in-out 1.8s 1 normal forwards;
          animation: particle-animation48 1s ease-in-out 1.8s 1 normal forwards;
}
.particle49 {
  left: 20px;
  opacity: 0;
  background-color: #47ebeb;
  -webkit-animation: particle-animation49 1s ease-in-out 1.8s 1 normal forwards;
          animation: particle-animation49 1s ease-in-out 1.8s 1 normal forwards;
}
.particle410 {
  left: 20px;
  opacity: 0;
  background-color: #47ebeb;
  -webkit-animation: particle-animation410 1s ease-in-out 1.8s 1 normal forwards;
          animation: particle-animation410 1s ease-in-out 1.8s 1 normal forwards;
}
.particle411 {
  left: 20px;
  opacity: 0;
  background-color: #47ebeb;
  -webkit-animation: particle-animation411 1s ease-in-out 1.8s 1 normal forwards;
          animation: particle-animation411 1s ease-in-out 1.8s 1 normal forwards;
}
.particle412 {
  left: 20px;
  opacity: 0;
  background-color: #47ebeb;
  -webkit-animation: particle-animation412 1s ease-in-out 1.8s 1 normal forwards;
          animation: particle-animation412 1s ease-in-out 1.8s 1 normal forwards;
}
.particle50 {
  left: 60px;
  opacity: 0;
  background-color: #4770eb;
  -webkit-animation: particle-animation50 1s ease-in-out 2s 1 normal forwards;
          animation: particle-animation50 1s ease-in-out 2s 1 normal forwards;
}
.particle51 {
  left: 60px;
  opacity: 0;
  background-color: #4770eb;
  -webkit-animation: particle-animation51 1s ease-in-out 2s 1 normal forwards;
          animation: particle-animation51 1s ease-in-out 2s 1 normal forwards;
}
.particle52 {
  left: 60px;
  opacity: 0;
  background-color: #4770eb;
  -webkit-animation: particle-animation52 1s ease-in-out 2s 1 normal forwards;
          animation: particle-animation52 1s ease-in-out 2s 1 normal forwards;
}
.particle53 {
  left: 60px;
  opacity: 0;
  background-color: #4770eb;
  -webkit-animation: particle-animation53 1s ease-in-out 2s 1 normal forwards;
          animation: particle-animation53 1s ease-in-out 2s 1 normal forwards;
}
.particle54 {
  left: 60px;
  opacity: 0;
  background-color: #4770eb;
  -webkit-animation: particle-animation54 1s ease-in-out 2s 1 normal forwards;
          animation: particle-animation54 1s ease-in-out 2s 1 normal forwards;
}
.particle55 {
  left: 60px;
  opacity: 0;
  background-color: #4770eb;
  -webkit-animation: particle-animation55 1s ease-in-out 2s 1 normal forwards;
          animation: particle-animation55 1s ease-in-out 2s 1 normal forwards;
}
.particle56 {
  left: 60px;
  opacity: 0;
  background-color: #4770eb;
  -webkit-animation: particle-animation56 1s ease-in-out 2s 1 normal forwards;
          animation: particle-animation56 1s ease-in-out 2s 1 normal forwards;
}
.particle57 {
  left: 60px;
  opacity: 0;
  background-color: #4770eb;
  -webkit-animation: particle-animation57 1s ease-in-out 2s 1 normal forwards;
          animation: particle-animation57 1s ease-in-out 2s 1 normal forwards;
}
.particle58 {
  left: 60px;
  opacity: 0;
  background-color: #4770eb;
  -webkit-animation: particle-animation58 1s ease-in-out 2s 1 normal forwards;
          animation: particle-animation58 1s ease-in-out 2s 1 normal forwards;
}
.particle59 {
  left: 60px;
  opacity: 0;
  background-color: #4770eb;
  -webkit-animation: particle-animation59 1s ease-in-out 2s 1 normal forwards;
          animation: particle-animation59 1s ease-in-out 2s 1 normal forwards;
}
.particle510 {
  left: 60px;
  opacity: 0;
  background-color: #4770eb;
  -webkit-animation: particle-animation510 1s ease-in-out 2s 1 normal forwards;
          animation: particle-animation510 1s ease-in-out 2s 1 normal forwards;
}
.particle511 {
  left: 60px;
  opacity: 0;
  background-color: #4770eb;
  -webkit-animation: particle-animation511 1s ease-in-out 2s 1 normal forwards;
          animation: particle-animation511 1s ease-in-out 2s 1 normal forwards;
}
.particle512 {
  left: 60px;
  opacity: 0;
  background-color: #4770eb;
  -webkit-animation: particle-animation512 1s ease-in-out 2s 1 normal forwards;
          animation: particle-animation512 1s ease-in-out 2s 1 normal forwards;
}
.particle60 {
  left: 100px;
  opacity: 0;
  background-color: #9947eb;
  -webkit-animation: particle-animation60 1s ease-in-out 2.2s 1 normal forwards;
          animation: particle-animation60 1s ease-in-out 2.2s 1 normal forwards;
}
.particle61 {
  left: 100px;
  opacity: 0;
  background-color: #9947eb;
  -webkit-animation: particle-animation61 1s ease-in-out 2.2s 1 normal forwards;
          animation: particle-animation61 1s ease-in-out 2.2s 1 normal forwards;
}
.particle62 {
  left: 100px;
  opacity: 0;
  background-color: #9947eb;
  -webkit-animation: particle-animation62 1s ease-in-out 2.2s 1 normal forwards;
          animation: particle-animation62 1s ease-in-out 2.2s 1 normal forwards;
}
.particle63 {
  left: 100px;
  opacity: 0;
  background-color: #9947eb;
  -webkit-animation: particle-animation63 1s ease-in-out 2.2s 1 normal forwards;
          animation: particle-animation63 1s ease-in-out 2.2s 1 normal forwards;
}
.particle64 {
  left: 100px;
  opacity: 0;
  background-color: #9947eb;
  -webkit-animation: particle-animation64 1s ease-in-out 2.2s 1 normal forwards;
          animation: particle-animation64 1s ease-in-out 2.2s 1 normal forwards;
}
.particle65 {
  left: 100px;
  opacity: 0;
  background-color: #9947eb;
  -webkit-animation: particle-animation65 1s ease-in-out 2.2s 1 normal forwards;
          animation: particle-animation65 1s ease-in-out 2.2s 1 normal forwards;
}
.particle66 {
  left: 100px;
  opacity: 0;
  background-color: #9947eb;
  -webkit-animation: particle-animation66 1s ease-in-out 2.2s 1 normal forwards;
          animation: particle-animation66 1s ease-in-out 2.2s 1 normal forwards;
}
.particle67 {
  left: 100px;
  opacity: 0;
  background-color: #9947eb;
  -webkit-animation: particle-animation67 1s ease-in-out 2.2s 1 normal forwards;
          animation: particle-animation67 1s ease-in-out 2.2s 1 normal forwards;
}
.particle68 {
  left: 100px;
  opacity: 0;
  background-color: #9947eb;
  -webkit-animation: particle-animation68 1s ease-in-out 2.2s 1 normal forwards;
          animation: particle-animation68 1s ease-in-out 2.2s 1 normal forwards;
}
.particle69 {
  left: 100px;
  opacity: 0;
  background-color: #9947eb;
  -webkit-animation: particle-animation69 1s ease-in-out 2.2s 1 normal forwards;
          animation: particle-animation69 1s ease-in-out 2.2s 1 normal forwards;
}
.particle610 {
  left: 100px;
  opacity: 0;
  background-color: #9947eb;
  -webkit-animation: particle-animation610 1s ease-in-out 2.2s 1 normal forwards;
          animation: particle-animation610 1s ease-in-out 2.2s 1 normal forwards;
}
.particle611 {
  left: 100px;
  opacity: 0;
  background-color: #9947eb;
  -webkit-animation: particle-animation611 1s ease-in-out 2.2s 1 normal forwards;
          animation: particle-animation611 1s ease-in-out 2.2s 1 normal forwards;
}
.particle612 {
  left: 100px;
  opacity: 0;
  background-color: #9947eb;
  -webkit-animation: particle-animation612 1s ease-in-out 2.2s 1 normal forwards;
          animation: particle-animation612 1s ease-in-out 2.2s 1 normal forwards;
}
.particle70 {
  left: 140px;
  opacity: 0;
  background-color: #eb47c2;
  -webkit-animation: particle-animation70 1s ease-in-out 2.4s 1 normal forwards;
          animation: particle-animation70 1s ease-in-out 2.4s 1 normal forwards;
}
.particle71 {
  left: 140px;
  opacity: 0;
  background-color: #eb47c2;
  -webkit-animation: particle-animation71 1s ease-in-out 2.4s 1 normal forwards;
          animation: particle-animation71 1s ease-in-out 2.4s 1 normal forwards;
}
.particle72 {
  left: 140px;
  opacity: 0;
  background-color: #eb47c2;
  -webkit-animation: particle-animation72 1s ease-in-out 2.4s 1 normal forwards;
          animation: particle-animation72 1s ease-in-out 2.4s 1 normal forwards;
}
.particle73 {
  left: 140px;
  opacity: 0;
  background-color: #eb47c2;
  -webkit-animation: particle-animation73 1s ease-in-out 2.4s 1 normal forwards;
          animation: particle-animation73 1s ease-in-out 2.4s 1 normal forwards;
}
.particle74 {
  left: 140px;
  opacity: 0;
  background-color: #eb47c2;
  -webkit-animation: particle-animation74 1s ease-in-out 2.4s 1 normal forwards;
          animation: particle-animation74 1s ease-in-out 2.4s 1 normal forwards;
}
.particle75 {
  left: 140px;
  opacity: 0;
  background-color: #eb47c2;
  -webkit-animation: particle-animation75 1s ease-in-out 2.4s 1 normal forwards;
          animation: particle-animation75 1s ease-in-out 2.4s 1 normal forwards;
}
.particle76 {
  left: 140px;
  opacity: 0;
  background-color: #eb47c2;
  -webkit-animation: particle-animation76 1s ease-in-out 2.4s 1 normal forwards;
          animation: particle-animation76 1s ease-in-out 2.4s 1 normal forwards;
}
.particle77 {
  left: 140px;
  opacity: 0;
  background-color: #eb47c2;
  -webkit-animation: particle-animation77 1s ease-in-out 2.4s 1 normal forwards;
          animation: particle-animation77 1s ease-in-out 2.4s 1 normal forwards;
}
.particle78 {
  left: 140px;
  opacity: 0;
  background-color: #eb47c2;
  -webkit-animation: particle-animation78 1s ease-in-out 2.4s 1 normal forwards;
          animation: particle-animation78 1s ease-in-out 2.4s 1 normal forwards;
}
.particle79 {
  left: 140px;
  opacity: 0;
  background-color: #eb47c2;
  -webkit-animation: particle-animation79 1s ease-in-out 2.4s 1 normal forwards;
          animation: particle-animation79 1s ease-in-out 2.4s 1 normal forwards;
}
.particle710 {
  left: 140px;
  opacity: 0;
  background-color: #eb47c2;
  -webkit-animation: particle-animation710 1s ease-in-out 2.4s 1 normal forwards;
          animation: particle-animation710 1s ease-in-out 2.4s 1 normal forwards;
}
.particle711 {
  left: 140px;
  opacity: 0;
  background-color: #eb47c2;
  -webkit-animation: particle-animation711 1s ease-in-out 2.4s 1 normal forwards;
          animation: particle-animation711 1s ease-in-out 2.4s 1 normal forwards;
}
.particle712 {
  left: 140px;
  opacity: 0;
  background-color: #eb47c2;
  -webkit-animation: particle-animation712 1s ease-in-out 2.4s 1 normal forwards;
          animation: particle-animation712 1s ease-in-out 2.4s 1 normal forwards;
}
.particle80 {
  left: 180px;
  opacity: 0;
  background-color: #eb4747;
  -webkit-animation: particle-animation80 1s ease-in-out 2.6s 1 normal forwards;
          animation: particle-animation80 1s ease-in-out 2.6s 1 normal forwards;
}
.particle81 {
  left: 180px;
  opacity: 0;
  background-color: #eb4747;
  -webkit-animation: particle-animation81 1s ease-in-out 2.6s 1 normal forwards;
          animation: particle-animation81 1s ease-in-out 2.6s 1 normal forwards;
}
.particle82 {
  left: 180px;
  opacity: 0;
  background-color: #eb4747;
  -webkit-animation: particle-animation82 1s ease-in-out 2.6s 1 normal forwards;
          animation: particle-animation82 1s ease-in-out 2.6s 1 normal forwards;
}
.particle83 {
  left: 180px;
  opacity: 0;
  background-color: #eb4747;
  -webkit-animation: particle-animation83 1s ease-in-out 2.6s 1 normal forwards;
          animation: particle-animation83 1s ease-in-out 2.6s 1 normal forwards;
}
.particle84 {
  left: 180px;
  opacity: 0;
  background-color: #eb4747;
  -webkit-animation: particle-animation84 1s ease-in-out 2.6s 1 normal forwards;
          animation: particle-animation84 1s ease-in-out 2.6s 1 normal forwards;
}
.particle85 {
  left: 180px;
  opacity: 0;
  background-color: #eb4747;
  -webkit-animation: particle-animation85 1s ease-in-out 2.6s 1 normal forwards;
          animation: particle-animation85 1s ease-in-out 2.6s 1 normal forwards;
}
.particle86 {
  left: 180px;
  opacity: 0;
  background-color: #eb4747;
  -webkit-animation: particle-animation86 1s ease-in-out 2.6s 1 normal forwards;
          animation: particle-animation86 1s ease-in-out 2.6s 1 normal forwards;
}
.particle87 {
  left: 180px;
  opacity: 0;
  background-color: #eb4747;
  -webkit-animation: particle-animation87 1s ease-in-out 2.6s 1 normal forwards;
          animation: particle-animation87 1s ease-in-out 2.6s 1 normal forwards;
}
.particle88 {
  left: 180px;
  opacity: 0;
  background-color: #eb4747;
  -webkit-animation: particle-animation88 1s ease-in-out 2.6s 1 normal forwards;
          animation: particle-animation88 1s ease-in-out 2.6s 1 normal forwards;
}
.particle89 {
  left: 180px;
  opacity: 0;
  background-color: #eb4747;
  -webkit-animation: particle-animation89 1s ease-in-out 2.6s 1 normal forwards;
          animation: particle-animation89 1s ease-in-out 2.6s 1 normal forwards;
}
.particle810 {
  left: 180px;
  opacity: 0;
  background-color: #eb4747;
  -webkit-animation: particle-animation810 1s ease-in-out 2.6s 1 normal forwards;
          animation: particle-animation810 1s ease-in-out 2.6s 1 normal forwards;
}
.particle811 {
  left: 180px;
  opacity: 0;
  background-color: #eb4747;
  -webkit-animation: particle-animation811 1s ease-in-out 2.6s 1 normal forwards;
          animation: particle-animation811 1s ease-in-out 2.6s 1 normal forwards;
}
.particle812 {
  left: 180px;
  opacity: 0;
  background-color: #eb4747;
  -webkit-animation: particle-animation812 1s ease-in-out 2.6s 1 normal forwards;
          animation: particle-animation812 1s ease-in-out 2.6s 1 normal forwards;
}
@-webkit-keyframes particle-animation00 {
  0% {
    left: -140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -40px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation00 {
  0% {
    left: -140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -40px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation01 {
  0% {
    left: -140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -53.39745959999999px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation01 {
  0% {
    left: -140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -53.39745959999999px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation02 {
  0% {
    left: -140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -90px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation02 {
  0% {
    left: -140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -90px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation03 {
  0% {
    left: -140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -140px;
    top: 100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation03 {
  0% {
    left: -140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -140px;
    top: 100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation04 {
  0% {
    left: -140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -190px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation04 {
  0% {
    left: -140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -190px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation05 {
  0% {
    left: -140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -226.6025404px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation05 {
  0% {
    left: -140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -226.6025404px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation06 {
  0% {
    left: -140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -240px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation06 {
  0% {
    left: -140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -240px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation07 {
  0% {
    left: -140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -226.6025404px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation07 {
  0% {
    left: -140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -226.6025404px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation08 {
  0% {
    left: -140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -190px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation08 {
  0% {
    left: -140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -190px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation09 {
  0% {
    left: -140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -140px;
    top: -100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation09 {
  0% {
    left: -140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -140px;
    top: -100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation010 {
  0% {
    left: -140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -90px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation010 {
  0% {
    left: -140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -90px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation011 {
  0% {
    left: -140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -53.39745959999999px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation011 {
  0% {
    left: -140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -53.39745959999999px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation012 {
  0% {
    left: -140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -40px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation012 {
  0% {
    left: -140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -40px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation10 {
  0% {
    left: -100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 0px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation10 {
  0% {
    left: -100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 0px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation11 {
  0% {
    left: -100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -13.39745959999999px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation11 {
  0% {
    left: -100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -13.39745959999999px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation12 {
  0% {
    left: -100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -50px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation12 {
  0% {
    left: -100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -50px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation13 {
  0% {
    left: -100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -100px;
    top: 100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation13 {
  0% {
    left: -100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -100px;
    top: 100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation14 {
  0% {
    left: -100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -150px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation14 {
  0% {
    left: -100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -150px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation15 {
  0% {
    left: -100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -186.6025404px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation15 {
  0% {
    left: -100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -186.6025404px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation16 {
  0% {
    left: -100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -200px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation16 {
  0% {
    left: -100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -200px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation17 {
  0% {
    left: -100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -186.6025404px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation17 {
  0% {
    left: -100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -186.6025404px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation18 {
  0% {
    left: -100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -150px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation18 {
  0% {
    left: -100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -150px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation19 {
  0% {
    left: -100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -100px;
    top: -100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation19 {
  0% {
    left: -100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -100px;
    top: -100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation110 {
  0% {
    left: -100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -50px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation110 {
  0% {
    left: -100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -50px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation111 {
  0% {
    left: -100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -13.39745959999999px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation111 {
  0% {
    left: -100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -13.39745959999999px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation112 {
  0% {
    left: -100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 0px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation112 {
  0% {
    left: -100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 0px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation20 {
  0% {
    left: -60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 40px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation20 {
  0% {
    left: -60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 40px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation21 {
  0% {
    left: -60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 26.60254040000001px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation21 {
  0% {
    left: -60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 26.60254040000001px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation22 {
  0% {
    left: -60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -10px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation22 {
  0% {
    left: -60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -10px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation23 {
  0% {
    left: -60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -60px;
    top: 100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation23 {
  0% {
    left: -60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -60px;
    top: 100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation24 {
  0% {
    left: -60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -110px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation24 {
  0% {
    left: -60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -110px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation25 {
  0% {
    left: -60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -146.6025404px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation25 {
  0% {
    left: -60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -146.6025404px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation26 {
  0% {
    left: -60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -160px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation26 {
  0% {
    left: -60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -160px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation27 {
  0% {
    left: -60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -146.6025404px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation27 {
  0% {
    left: -60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -146.6025404px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation28 {
  0% {
    left: -60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -110px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation28 {
  0% {
    left: -60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -110px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation29 {
  0% {
    left: -60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -60px;
    top: -100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation29 {
  0% {
    left: -60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -60px;
    top: -100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation210 {
  0% {
    left: -60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -10px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation210 {
  0% {
    left: -60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -10px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation211 {
  0% {
    left: -60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 26.60254040000001px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation211 {
  0% {
    left: -60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 26.60254040000001px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation212 {
  0% {
    left: -60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 40px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation212 {
  0% {
    left: -60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 40px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation30 {
  0% {
    left: -20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 80px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation30 {
  0% {
    left: -20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 80px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation31 {
  0% {
    left: -20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 66.60254040000001px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation31 {
  0% {
    left: -20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 66.60254040000001px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation32 {
  0% {
    left: -20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 30px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation32 {
  0% {
    left: -20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 30px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation33 {
  0% {
    left: -20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -20px;
    top: 100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation33 {
  0% {
    left: -20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -20px;
    top: 100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation34 {
  0% {
    left: -20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -70px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation34 {
  0% {
    left: -20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -70px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation35 {
  0% {
    left: -20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -106.60254040000001px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation35 {
  0% {
    left: -20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -106.60254040000001px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation36 {
  0% {
    left: -20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -120px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation36 {
  0% {
    left: -20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -120px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation37 {
  0% {
    left: -20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -106.60254040000001px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation37 {
  0% {
    left: -20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -106.60254040000001px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation38 {
  0% {
    left: -20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -70px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation38 {
  0% {
    left: -20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -70px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation39 {
  0% {
    left: -20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -20px;
    top: -100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation39 {
  0% {
    left: -20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -20px;
    top: -100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation310 {
  0% {
    left: -20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 30px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation310 {
  0% {
    left: -20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 30px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation311 {
  0% {
    left: -20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 66.60254040000001px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation311 {
  0% {
    left: -20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 66.60254040000001px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation312 {
  0% {
    left: -20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 80px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation312 {
  0% {
    left: -20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 80px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation40 {
  0% {
    left: 20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 120px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation40 {
  0% {
    left: 20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 120px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation41 {
  0% {
    left: 20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 106.60254040000001px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation41 {
  0% {
    left: 20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 106.60254040000001px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation42 {
  0% {
    left: 20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 70px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation42 {
  0% {
    left: 20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 70px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation43 {
  0% {
    left: 20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 20px;
    top: 100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation43 {
  0% {
    left: 20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 20px;
    top: 100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation44 {
  0% {
    left: 20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -30px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation44 {
  0% {
    left: 20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -30px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation45 {
  0% {
    left: 20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -66.60254040000001px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation45 {
  0% {
    left: 20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -66.60254040000001px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation46 {
  0% {
    left: 20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -80px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation46 {
  0% {
    left: 20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -80px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation47 {
  0% {
    left: 20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -66.60254040000001px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation47 {
  0% {
    left: 20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -66.60254040000001px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation48 {
  0% {
    left: 20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -30px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation48 {
  0% {
    left: 20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -30px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation49 {
  0% {
    left: 20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 20px;
    top: -100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation49 {
  0% {
    left: 20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 20px;
    top: -100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation410 {
  0% {
    left: 20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 70px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation410 {
  0% {
    left: 20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 70px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation411 {
  0% {
    left: 20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 106.60254040000001px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation411 {
  0% {
    left: 20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 106.60254040000001px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation412 {
  0% {
    left: 20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 120px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation412 {
  0% {
    left: 20px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 120px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation50 {
  0% {
    left: 60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 160px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation50 {
  0% {
    left: 60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 160px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation51 {
  0% {
    left: 60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 146.6025404px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation51 {
  0% {
    left: 60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 146.6025404px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation52 {
  0% {
    left: 60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 110px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation52 {
  0% {
    left: 60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 110px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation53 {
  0% {
    left: 60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 60px;
    top: 100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation53 {
  0% {
    left: 60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 60px;
    top: 100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation54 {
  0% {
    left: 60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 10px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation54 {
  0% {
    left: 60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 10px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation55 {
  0% {
    left: 60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -26.60254040000001px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation55 {
  0% {
    left: 60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -26.60254040000001px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation56 {
  0% {
    left: 60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -40px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation56 {
  0% {
    left: 60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -40px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation57 {
  0% {
    left: 60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -26.60254040000001px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation57 {
  0% {
    left: 60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: -26.60254040000001px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation58 {
  0% {
    left: 60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 10px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation58 {
  0% {
    left: 60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 10px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation59 {
  0% {
    left: 60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 60px;
    top: -100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation59 {
  0% {
    left: 60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 60px;
    top: -100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation510 {
  0% {
    left: 60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 110px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation510 {
  0% {
    left: 60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 110px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation511 {
  0% {
    left: 60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 146.6025404px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation511 {
  0% {
    left: 60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 146.6025404px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation512 {
  0% {
    left: 60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 160px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation512 {
  0% {
    left: 60px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 160px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation60 {
  0% {
    left: 100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 200px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation60 {
  0% {
    left: 100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 200px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation61 {
  0% {
    left: 100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 186.6025404px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation61 {
  0% {
    left: 100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 186.6025404px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation62 {
  0% {
    left: 100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 150px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation62 {
  0% {
    left: 100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 150px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation63 {
  0% {
    left: 100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 100px;
    top: 100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation63 {
  0% {
    left: 100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 100px;
    top: 100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation64 {
  0% {
    left: 100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 50px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation64 {
  0% {
    left: 100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 50px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation65 {
  0% {
    left: 100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 13.39745959999999px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation65 {
  0% {
    left: 100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 13.39745959999999px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation66 {
  0% {
    left: 100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 0px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation66 {
  0% {
    left: 100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 0px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation67 {
  0% {
    left: 100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 13.39745959999999px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation67 {
  0% {
    left: 100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 13.39745959999999px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation68 {
  0% {
    left: 100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 50px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation68 {
  0% {
    left: 100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 50px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation69 {
  0% {
    left: 100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 100px;
    top: -100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation69 {
  0% {
    left: 100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 100px;
    top: -100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation610 {
  0% {
    left: 100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 150px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation610 {
  0% {
    left: 100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 150px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation611 {
  0% {
    left: 100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 186.6025404px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation611 {
  0% {
    left: 100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 186.6025404px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation612 {
  0% {
    left: 100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 200px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation612 {
  0% {
    left: 100px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 200px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation70 {
  0% {
    left: 140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 240px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation70 {
  0% {
    left: 140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 240px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation71 {
  0% {
    left: 140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 226.6025404px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation71 {
  0% {
    left: 140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 226.6025404px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation72 {
  0% {
    left: 140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 190px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation72 {
  0% {
    left: 140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 190px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation73 {
  0% {
    left: 140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 140px;
    top: 100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation73 {
  0% {
    left: 140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 140px;
    top: 100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation74 {
  0% {
    left: 140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 90px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation74 {
  0% {
    left: 140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 90px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation75 {
  0% {
    left: 140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 53.39745959999999px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation75 {
  0% {
    left: 140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 53.39745959999999px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation76 {
  0% {
    left: 140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 40px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation76 {
  0% {
    left: 140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 40px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation77 {
  0% {
    left: 140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 53.39745959999999px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation77 {
  0% {
    left: 140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 53.39745959999999px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation78 {
  0% {
    left: 140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 90px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation78 {
  0% {
    left: 140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 90px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation79 {
  0% {
    left: 140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 140px;
    top: -100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation79 {
  0% {
    left: 140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 140px;
    top: -100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation710 {
  0% {
    left: 140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 190px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation710 {
  0% {
    left: 140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 190px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation711 {
  0% {
    left: 140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 226.6025404px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation711 {
  0% {
    left: 140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 226.6025404px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation712 {
  0% {
    left: 140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 240px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation712 {
  0% {
    left: 140px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 240px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation80 {
  0% {
    left: 180px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 280px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation80 {
  0% {
    left: 180px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 280px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation81 {
  0% {
    left: 180px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 266.6025404px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation81 {
  0% {
    left: 180px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 266.6025404px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation82 {
  0% {
    left: 180px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 230px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation82 {
  0% {
    left: 180px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 230px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation83 {
  0% {
    left: 180px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 180px;
    top: 100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation83 {
  0% {
    left: 180px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 180px;
    top: 100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation84 {
  0% {
    left: 180px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 130px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation84 {
  0% {
    left: 180px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 130px;
    top: 86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation85 {
  0% {
    left: 180px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 93.39745959999999px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation85 {
  0% {
    left: 180px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 93.39745959999999px;
    top: 50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation86 {
  0% {
    left: 180px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 80px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation86 {
  0% {
    left: 180px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 80px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation87 {
  0% {
    left: 180px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 93.39745959999999px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation87 {
  0% {
    left: 180px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 93.39745959999999px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation88 {
  0% {
    left: 180px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 130px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation88 {
  0% {
    left: 180px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 130px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation89 {
  0% {
    left: 180px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 180px;
    top: -100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation89 {
  0% {
    left: 180px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 180px;
    top: -100px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation810 {
  0% {
    left: 180px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 230px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation810 {
  0% {
    left: 180px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 230px;
    top: -86.60254040000001px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation811 {
  0% {
    left: 180px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 266.6025404px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation811 {
  0% {
    left: 180px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 266.6025404px;
    top: -50px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes particle-animation812 {
  0% {
    left: 180px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 280px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@keyframes particle-animation812 {
  0% {
    left: 180px;
    top: 0;
    opacity: 0;
    transform: scale(1, 1);
  }
  100% {
    left: 280px;
    top: 0px;
    opacity: 1;
    transform: scale(0, 0);
  }
}
@-webkit-keyframes background-animation {
  0% {
    width: 0;
  }
  50% {
    width: 12.5%;
    opacity: 1;
  }
  100% {
    opacity: 0;
    width: 25%;
  }
}
@keyframes background-animation {
  0% {
    width: 0;
  }
  50% {
    width: 12.5%;
    opacity: 1;
  }
  100% {
    opacity: 0;
    width: 25%;
  }
}

.imgshow{
	width: 100%;
     -webkit-animation: fadein 15s; /* Safari and Chrome */
}

@-webkit-keyframes fadein { /* Safari and Chrome */
    from {
        opacity:0;
    }
    to {
        opacity:1;
    }
}
.short_contact_list{
	
	font-size: 3em;
	font-weight: bolder;

}

.headerimg{

	filter:opacity(0.5)drop-shadow(0 0 0 red);
	

}



/*시설 map css부분 */


.map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
.map_wrap {position:relative;width:100%;height:500px;}
#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}
.bg_white {background:#fff;}
#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
#menu_wrap .option{text-align: center;}
#menu_wrap .option p {margin:10px 0;}  
#menu_wrap .option button {margin-left:5px;}
#placesList li {list-style: none;}
#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
#placesList .item span {display: block;margin-top:4px;}
#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
#placesList .item .info{padding:10px 0 10px 55px;}
#placesList .info .gray {color:#8a8a8a;}
#placesList .info .jibun {padding-left:26px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
#placesList .info .tel {color:#009900;}
#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
#placesList .item .marker_1 {background-position: 0 -10px;}
#placesList .item .marker_2 {background-position: 0 -56px;}
#placesList .item .marker_3 {background-position: 0 -102px}
#placesList .item .marker_4 {background-position: 0 -148px;}
#placesList .item .marker_5 {background-position: 0 -194px;}
#placesList .item .marker_6 {background-position: 0 -240px;}
#placesList .item .marker_7 {background-position: 0 -286px;}
#placesList .item .marker_8 {background-position: 0 -332px;}
#placesList .item .marker_9 {background-position: 0 -378px;}
#placesList .item .marker_10 {background-position: 0 -423px;}
#placesList .item .marker_11 {background-position: 0 -470px;}
#placesList .item .marker_12 {background-position: 0 -516px;}
#placesList .item .marker_13 {background-position: 0 -562px;}
#placesList .item .marker_14 {background-position: 0 -608px;}
#placesList .item .marker_15 {background-position: 0 -654px;}
#pagination {margin:10px auto;text-align: center;}
#pagination a {display:inline-block;margin-right:10px;}
#pagination .on {font-weight: bold; cursor: default;color:#777;}



#container {overflow:hidden;height:300px;position:relative;}
#mapWrapper {width:100%;height:300px;z-index:1;}
#rvWrapper {width:50%;height:300px;top:0;right:0;position:absolute;z-index:0;}
#container.view_roadview #mapWrapper {width: 50%;}
#roadviewControl {position:absolute;top:5px;left:5px;width:42px;height:42px;z-index: 1;cursor: pointer; background: url(https://t1.daumcdn.net/localimg/localimages/07/2018/pc/common/img_search.png) 0 -450px no-repeat;}
#roadviewControl.active {background-position:0 -350px;}
#close {position: absolute;padding: 4px;top: 5px;left: 5px;cursor: pointer;background: #fff;border-radius: 4px;border: 1px solid #c8c8c8;box-shadow: 0px 1px #888;}
#close .img {display: block;background: url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/rv_close.png) no-repeat;width: 14px;height: 14px;} 



.click {
    display: block;
    margin:100px auto;
    background-color: #333;
    color: #fff;
    border: none;
    padding: 20px 40px;
    border-radius:25px;
    font-size: 30px;
    cursor: pointer;
    box-shadow: 0px 0px 10px 3px #888;
}

.click:hover {
    color: #9c27b0;
    box-shadow: 0px 0px 10px 3px #9c27b04f;
    background-color: #fff;
}
.click:focus {outline:0;} 





.close {
	display: block;
background-color: gray;
     position: relative;
    top: 20em;

    right: 50em;
  transform-origin: 0 50%;
  -webkit-transform: translateX(-50%) scale(0);
  -moz-transform: translateX(-50%) scale(0);
  -o-transform: translateX(-50%) scale(0);
  -ms-transform: translateX(-50%) scale(0);
  transform: translateX(-50%) scale(0);
  width: 60px;
  height: 60px;
  border: none;
  background: #000;
  border-radius: 100%;
  margin: 0;
  padding: 0;
  cursor: pointer;
  z-index: 10;
}

.close:focus {
	display: block;
  outline: none;
}

.close.open {
	display: block;
  -webkit-animation: scale 0.4s ease-in;
  -moz-animation: scale 0.4s ease-in;
  -o-animation: scale 0.4s ease-in;
  animation: scale 0.4s ease-in;
  -webkit-animation-fill-mode: forwards;
  -moz-animation-fill-mode: forwards;
  -o-animation-fill-mode: forwards;
  animation-fill-mode: forwards;
  -webkit-animation-delay: 1.5s;
  -moz-webkit-animation-delay: 1.5s;
  -o-webkit-animation-delay: 1.5s;
  -webkit-animation-delay: 1.5s;
  /*-webkit-transform: scale(1) translateX(-50%);*/
}

@-webkit-keyframes scale {
  0% { transform: scale(0) translateX(-50%); }
  80% { transform: scale(1.1) translateX(-50%) }
  100% { transform: scale(1) translateX(-50%) }
}

@keyframes scale {
  0% { transform: scale(0) translateX(-50%); }
  80% { transform: scale(1.1) translateX(-50%) }
  100% { transform: scale(1) translateX(-50%) }
}

.line {
	display: inline-block;
  position: absolute;
  width: 35%;
  height: 1px;
  background: #fff;
  left: 50%;
  -webkit-transform: translateX(-50%) rotate(45deg);
  -moz-transform: translateX(-50%) rotate(45deg);
  -o-transform: translateX(-50%) rotate(45deg);
  -ms-transform: translateX(-50%) rotate(45deg);
  transform: translateX(-50%) rotate(45deg);
}

.line:nth-child(2) {
	display: inline-block;
  -webkit-transform: translateX(-50%) rotate(-45deg);
  -moz-transform: translateX(-50%) rotate(-45deg);
  -o-transform: translateX(-50%) rotate(-45deg);
  -ms-transform: translateX(-50%) rotate(-45deg);
  transform: translateX(-50%) rotate(-45deg);
}

.button {
  display: inline-block;
  width: 15%;
  min-width: 120px;
  height: 50px;
  line-height: 50px;
  text-align: center;
  background: black;
  position: relative;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
  -moz-transform: translate(-50%, -50%);
  -o-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  cursor: pointer;
  -webkit-transition: top 0.5s ease;
  -moz-transition: top 0.5s ease;
  -o-transition: top 0.5s ease;
  transition: top 0.5s ease;
}

.bt {
	display: inline-block;
  font-family: 'Fjalla One';
  font-size: 15px;
  letter-spacing: 3px;
  color: #fff;
  text-transform: uppercase;
  -webkit-transition: 0.5s ease;
  -moz-transition: 0.5s ease;
  -o-transition: 0.5s ease;
  transition: 0.5s ease;
}

.button.active .bt {
  display: none;
}

.button.active {
display: inline-block
  width: 30%;
  height: 2px;
  top: -100%;
  -webkit-transition: width 0.5s ease, height 0.5s ease, top 1s ease 1.2s;
  -moz-transition: width 0.5s ease, height 0.5s ease, top 1s ease 1.2s;
  -o-transition: width 0.5s ease, height 0.5s ease, top 1s ease 1.2s;
  transition: width 0.5s ease, height 0.5s ease, top 1s ease 1.2s;
}

.button:before {
  content: "";
  position: absolute;
  left: 0;
  width: 0;
  height: 100%;
  background: red;
  -webkit-transition: 0.5s ease;
  -moz-transition: 0.5s ease;
  -o-transition: 0.5s ease;
  transition: 0.5s ease;
  -webkit-transition-delay: 0.5s;
  -moz-transition-delay: 0.5s;
  -o-transition-delay: 0.5s;
  transition-delay: 0.5s;
}

.button.active:before {
  width: 100%;
}

.content {
	display : inline-block;
	opacity:0;
    position: absolute;
    left: 30%;
    bottom: 500px;
    width: 60%;
    height: 500px;
  -webkit-transition: 1s ease;
  -moz-transition: 1s ease;
  -o-transition: 1s ease;
  transition: 1s ease;
}

.content.show {
	display: block;
	opacity:1;
 	top: 200em;
  -webkit-transition: 1s ease 1s;
  -moz-transition: 1s ease 1s;
  -o-transition: 1s ease 1s;
  transition: 1s ease 1s;
}


.mapcontainer.show {
	display: block;
		opacity:1;
  top: 200em;
  -webkit-transition: 1s ease 1s;
  -moz-transition: 1s ease 1s;
  -o-transition: 1s ease 1s;
  transition: 1s ease 1s;
}



.mapcontainer {
	display: block;

  width: 100%;
  height: auto;
  padding: 0;
  margin: 0;
  font-family: 'Fjalla One';
  font-size: 25px;
  letter-spacing: 3px;
  text-align: center;
  position: absolute;
  top: 50%;
  -webkit-transform: translateY(-50%);
  -moz-transform: translateY(-50%);
  -o-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  transform: translateY(-50%);
} 



</style>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- <link rel="manifest" href="site.webmanifest"> -->
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/img/favicon.png">
<!-- Place favicon.ico in the root directory -->

<!-- CSS here -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/themify-icons.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/nice-select.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/gijgo.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/animate.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/slicknav.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<!-- 
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/responsive.css">
 -->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/maingoods.css">

</head>
<script type="text/javascript">
	
</script>
<body>
	<!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

	<header>
		<div class="header-area ">
			<div class="header-top_area">
				<div class="container">
					<div class="row">
						<div class="col-lg-6 col-md-8">
							<div class="short_contact_list">
								<ul>
									<li><a href="${pageContext.request.contextPath}/goodtest">버튼1
											</a></li>
									<li><a
										href="${pageContext.request.contextPath}/resources/#">버튼2</a></li>
									<li><a
										href="${pageContext.request.contextPath}/lsh/adminmain">관리자 테스트</a></li>	
									<li><a
										href="${pageContext.request.contextPath}/admin/">admin</a></li>	
								</ul>
							</div>
						</div>
						<div class="col-lg-6 col-md-4 ">
							<div class="social_media_links">
								<a href="${pageContext.request.contextPath}/sec/members"><i
									class="fa"> 메인1 </i> </a>
									<c:choose>
										<c:when test="${id =='anonymousUser'}">
										 <a	href="${pageContext.request.contextPath}/login/login">
										<img style="height: 30px;"  class="headerimg" src="${pageContext.request.contextPath }/resources/img/index_icon/account-login-512-white.png">
										</a>
										</c:when>
										<c:otherwise>
										<sec:authorize access="isAuthenticated()">
										<a href="#" onclick="document.getElementById('logout').submit();">
										<img style="height: 30px;" class="headerimg" src="${pageContext.request.contextPath }/resources/img/index_icon/account-logout-512.png">
										</a>
										</sec:authorize>
										</c:otherwise>
									</c:choose>
									 <a href="${pageContext.request.contextPath}/shop/add_to_cart_list"> 
								<img style="height: 30px;" class="headerimg" src="${pageContext.request.contextPath }/resources/img/index_icon/shopping-basket-512-white.png">
								</a> <a href="${pageContext.request.contextPath}/members/mypage"> 
								<img style="height: 30px;" class="headerimg" src="${pageContext.request.contextPath }/resources/img/index_icon/guest-512-white.png">
								</a> <a href="${pageContext.request.contextPath}/members/mypage"> 
								<img style="height: 30px;" src="${pageContext.request.contextPath }/resources/img/index_icon/guest-512-white.png">
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
						<form id="logout" action="${pageContext.request.contextPath}/logout" method="POST">
										   <input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/>
										</form>				
			<div id="sticky-header" class="main-header-area">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-xl-3 col-lg-3">
							<div class="logo">
								<a href="${pageContext.request.contextPath}/"> <img
									src="${pageContext.request.contextPath}/resources/img/logo.png"
									alt="">
								</a>
							</div>
						</div>
						<div class="col-xl-9 col-lg-9">
							<div class="main-menu  d-none d-lg-block">
								<nav>
									<ul id="navigation">
										<li><a href="${pageContext.request.contextPath}/">홈</a></li>
										<li><a href="${pageContext.request.contextPath}/about">유기견</a></li>
										<li><a href="#">blog <i class="ti-angle-down"></i></a>
											<ul class="submenu">
												<li><a href="${pageContext.request.contextPath}/blog">블로그</a></li>
												<li><a
													href="${pageContext.request.contextPath}/singleblog">서브블로그</a></li>
											</ul> </li>
										<li><a href="#">pages <i class="ti-angle-down"></i></a>
											<ul class="submenu">
												<li><a
													href="${pageContext.request.contextPath}/elements">elements</a></li>

											</ul> </li>
										<li><a href="${pageContext.request.contextPath}/">서비스 </a></li>
										<li><a href="${pageContext.request.contextPath}/contact">메세지</a></li>
									</ul>
								</nav>
							</div>
						</div>
						<div class="col-12">
							<div class="mobile_menu d-block d-lg-none"></div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</header>
<div class="slider_area" style="position: relative; top: 7em;">
<div class="single_slider slider_bg_1 d-flex align-items-center">
<div class="background background0"></div>
<div class="background background1"></div>
<div class="background background2"></div>
<div class="background background3"></div>
<div class="background background4"></div>
<div class="background background5"></div>
<div class="background background6"></div>
<div class="background background7"></div>
<div class="criterion">
  <div class="text text0">W</div>
  <div class="text text1">e</div>
  <div class="text text2">l</div>
  <div class="text text3">c</div>
  <div class="text text4">o</div>
  <div class="text text5">m</div>
  <div class="text text6">e</div>
  <div class="text text7">: )</div>
  <div class="frame frame0"></div>
  <div class="frame frame1"></div>
  <div class="frame frame2"></div>
  <div class="frame frame3"></div>
  <div class="frame frame4"></div>
  <div class="frame frame5"></div>
  <div class="frame frame6"></div>
  <div class="frame frame7"></div>
  <div class="particle particle00"></div>
  <div class="particle particle01"></div>
  <div class="particle particle02"></div>
  <div class="particle particle03"></div>
  <div class="particle particle04"></div>
  <div class="particle particle05"></div>
  <div class="particle particle06"></div>
  <div class="particle particle07"></div>
  <div class="particle particle08"></div>
  <div class="particle particle09"></div>
  <div class="particle particle010"></div>
  <div class="particle particle011"></div>
  <div class="particle particle10"></div>
  <div class="particle particle11"></div>
  <div class="particle particle12"></div>
  <div class="particle particle13"></div>
  <div class="particle particle14"></div>
  <div class="particle particle15"></div>
  <div class="particle particle16"></div>
  <div class="particle particle17"></div>
  <div class="particle particle18"></div>
  <div class="particle particle19"></div>
  <div class="particle particle110"></div>
  <div class="particle particle111"></div>
  <div class="particle particle20"></div>
  <div class="particle particle21"></div>
  <div class="particle particle22"></div>
  <div class="particle particle23"></div>
  <div class="particle particle24"></div>
  <div class="particle particle25"></div>
  <div class="particle particle26"></div>
  <div class="particle particle27"></div>
  <div class="particle particle28"></div>
  <div class="particle particle29"></div>
  <div class="particle particle210"></div>
  <div class="particle particle211"></div>
  <div class="particle particle30"></div>
  <div class="particle particle31"></div>
  <div class="particle particle32"></div>
  <div class="particle particle33"></div>
  <div class="particle particle34"></div>
  <div class="particle particle35"></div>
  <div class="particle particle36"></div>
  <div class="particle particle37"></div>
  <div class="particle particle38"></div>
  <div class="particle particle39"></div>
  <div class="particle particle310"></div>
  <div class="particle particle311"></div>
  <div class="particle particle40"></div>
  <div class="particle particle41"></div>
  <div class="particle particle42"></div>
  <div class="particle particle43"></div>
  <div class="particle particle44"></div>
  <div class="particle particle45"></div>
  <div class="particle particle46"></div>
  <div class="particle particle47"></div>
  <div class="particle particle48"></div>
  <div class="particle particle49"></div>
  <div class="particle particle410"></div>
  <div class="particle particle411"></div>
  <div class="particle particle50"></div>
  <div class="particle particle51"></div>
  <div class="particle particle52"></div>
  <div class="particle particle53"></div>
  <div class="particle particle54"></div>
  <div class="particle particle55"></div>
  <div class="particle particle56"></div>
  <div class="particle particle57"></div>
  <div class="particle particle58"></div>
  <div class="particle particle59"></div>
  <div class="particle particle510"></div>
  <div class="particle particle511"></div>
  <div class="particle particle60"></div>
  <div class="particle particle61"></div>
  <div class="particle particle62"></div>
  <div class="particle particle63"></div>
  <div class="particle particle64"></div>
  <div class="particle particle65"></div>
  <div class="particle particle66"></div>
  <div class="particle particle67"></div>
  <div class="particle particle68"></div>
  <div class="particle particle69"></div>
  <div class="particle particle610"></div>
  <div class="particle particle611"></div>
  <div class="particle particle70"></div>
  <div class="particle particle71"></div>
  <div class="particle particle72"></div>
  <div class="particle particle73"></div>
  <div class="particle particle74"></div>
  <div class="particle particle75"></div>
  <div class="particle particle76"></div>
  <div class="particle particle77"></div>
  <div class="particle particle78"></div>
  <div class="particle particle79"></div>
  <div class="particle particle710"></div>
  <div class="particle particle711"></div>


</div>
<img class="imgshow" src="${pageContext.request.contextPath}/resources/img/goods/animalimages-removebg.png" >
 	</div>

	</div>
	<!-- slider_area_start -->
	<!-- 

		<div class="single_slider slider_bg_1 d-flex align-items-center">
			<div class="container">
				<div class="row">
					<div class="col-lg-5 col-md-6">
						<div class="slider_text">
							<h3>
								We Care <br> <span>Your Pets</span>
							</h3>
							<p>
								Lorem ipsum dolor sit amet, consectetur <br> adipiscing
								elit, sed do eiusmod.
							</p>
							<a href="contact.html" class="boxed-btn4">Contact Us</a>
						</div>
					</div>
				</div>
			</div>
			<div class="dog_thumb d-none d-lg-block">
				<img
					src="${pageContext.request.contextPath}/resources/img/banner/dog.png"
					alt="">
			</div>
	
		 -->
	<!-- slider_area_end -->
	
	<!-- list_start  -->
	<div class="service_area">
		<div class="container">
			<div class="row justify-content-center ">
				<div class="col-lg-7 col-md-10">
					<div class="section_title text-center mb-95">
						<h3>강아지상품 list 부분</h3>
						<p>강아지 list에 대한 설명부분</p>
						
					</div>
				</div>
			</div>
			<div class="row justify-content-center">


				<!-- 메인 상품굿즈 구현 부분 -->
				<ul class="tiles">
					
					<li>
						<h2>Healthy Care</h2> <a href="${pageContext.request.contextPath}/shop/goods_detail?gc_num=1">View All ▶▶</a>
					</li>

						<li class="wow bounceInLeft">
						<img src="${pageContext.request.contextPath}/resources/img/goods/${healthygoodsaveimg}">
						</li>

					<li>
						<h2>Fashion</h2> <a href="${pageContext.request.contextPath}/shop/goods_detail?gc_num=2">View All ▶▶</a>
					</li>
					
					<li class="wow bounceInRight">
					
					<img src="${pageContext.request.contextPath}/resources/img/goods/${fashiongoodsaveimg}">
					</li>
					
					
					<li class="wow bounceInLeft">
					
					<img src="${pageContext.request.contextPath}/resources/img/goods/${foodgoodsaveimg}">
					</li>
					
					<li style="text-align: left; padding-top: 70px;">
						<h2>Food/</h2>
						<h2>Snacks</h2> 
						<a href="${pageContext.request.contextPath}/shop/goods_detail?gc_num=3" style="text-align: left; padding-bottom: 30px;"> View All ◀◀ </a>
					</li>
					<li class="wow bounceInRight">
					
					<img src="${pageContext.request.contextPath}/resources/img/goods/${livegoodsaveimg}">
					</li>
					<li style="text-align: left; padding-top: 50px;">
						<h2>Living/</h2>
						<h2>Home</h2>
						<h2>Appliances</h2> <a href="${pageContext.request.contextPath}/shop/goods_detail?gc_num=4">View All ◀◀</a>
					</li>
				</ul>


			</div>
		</div>
	</div>
	
	
	
	<div style="padding-top:  100px;">

<button class="close">
  <div class="line"></div>
  <div class="line"></div>
</button>
 <button id="btn" class="click" style="top: 5em;">우리아이를 위한 시설찾기 서비스 공간</button> 
<div class="button">
  <span class="bt">Click me</span>
</div>

	<!--list_start end -->
	<div class="content">
<div id="container" class="mapcontainer" style="width: 60%; left: 30px; height: 450px;" >
	   <div id="rvWrapper" >
        <div id="roadview" style="width:100%;height:450px;"></div> <!-- 로드뷰를 표시할 div 입니다 -->
        <div id="close" title="로드뷰닫기" onclick="closeRoadview()"><span class="img"></span></div>
    </div>
	<div id="mapWrapper">
	<div class="map_wrap">
    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
	  <div id="roadviewControl" onclick="setRoadviewRoad()" style="left: 40em;"></div>	
    <div id="menu_wrap" class="bg_white">
        <div class="option">
            <div>
                <form onsubmit="searchPlaces(); return false;">
                      키워드 : <input type="text"  placeholder="동물병원 찾기" value="서울 동물병원"  id="keyword" size="15"> 
                    <button type="submit">검색하기</button> 
                </form>
            </div>
        </div>
        <hr>
        <ul id="placesList"></ul>
        <div id="pagination"></div>
    </div>
</div>
</div>
	</div>
</div>	

</div>

	


	<!-- pet_care_area_start
	<div class="pet_care_area">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-5 col-md-6">
					<div class="pet_thumb">
						<img
							src="${pageContext.request.contextPath}/resources/img/about/pet_care.png"
							alt="">
					</div>
				</div>
				<div class="col-lg-6 offset-lg-1 col-md-6">
					<div class="pet_info">
						<div class="section_title">
							<h3>
								<span>We care your pet </span> <br> As you care
							</h3>
							<p>
								Lorem ipsum dolor sit , consectetur adipiscing elit, sed do <br>
								iusmod tempor incididunt ut labore et dolore magna aliqua. <br>
								Quis ipsum suspendisse ultrices gravida. Risus commodo <br>
								viverra maecenas accumsan.
							</p>
							<a href="about.html" class="boxed-btn3">About Us</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- pet_care_area_end  -->
 
	<!-- adapt_area_start  -->
	<!-- 
	<div class="adapt_area" style="top: 20em;     position: relative;">
		<div class="container">
			<div class="row justify-content-between align-items-center">
				<div class="col-lg-5">
					<div class="adapt_help">
						<div class="section_title">
							<h3>
								<span>We need your</span> help Adopt Us
							</h3>
							<p>Lorem ipsum dolor sit , consectetur adipiscing elit, sed
								do iusmod tempor incididunt ut labore et dolore magna aliqua.
								Quis ipsum suspendisse ultrices.</p>
							<a href="contact.html" class="boxed-btn3">Contact Us</a>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="adapt_about">
						<div class="row align-items-center">
							<div class="col-lg-6 col-md-6">
								<div class="single_adapt text-center">
									<img
										src="${pageContext.request.contextPath}/resources/img/adapt_icon/1.png"
										alt="">
									<div class="adapt_content">
										<h3 class="counter">452</h3>
										<p>Pets Available</p>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="single_adapt text-center">
									<img
										src="${pageContext.request.contextPath}/resources/img/adapt_icon/3.png"
										alt="">
									<div class="adapt_content">
										<h3>
											<span class="counter">52</span>+
										</h3>
										<p>Pets Available</p>
									</div>
								</div>
								<div class="single_adapt text-center">
									<img
										src="${pageContext.request.contextPath}/resources/img/adapt_icon/2.png"
										alt="">
									<div class="adapt_content">
										<h3>
											<span class="counter">52</span>+
										</h3>
										<p>Pets Available</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	-->
	<!-- adapt_area_end  -->
	

  <div id="map" style="width:500px;height:400px;"></div>
	<!-- testmonial_area_start  -->
	<div class="testmonial_area">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-10">
					<div class="textmonial_active owl-carousel">
						<div class="testmonial_wrap">
							<div class="single_testmonial d-flex align-items-center">
								<div class="test_thumb">
									<img
										src="${pageContext.request.contextPath}/resources/img/testmonial/1.png"
										alt="">
								</div>
								<div class="test_content">
									<h4>Jhon Walker</h4>
									<span>Head of web design</span>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua. Ut enim ad minim veniam, quis nostrud exerci.</p>
								</div>
							</div>
						</div>
						<div class="testmonial_wrap">
							<div class="single_testmonial d-flex align-items-center">
								<div class="test_thumb">
									<img
										src="${pageContext.request.contextPath}/resources/img/testmonial/1.png"
										alt="">
								</div>
								<div class="test_content">
									<h4>Jhon Walker</h4>
									<span>Head of web design</span>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua. Ut enim ad minim veniam, quis nostrud exerci.</p>
								</div>
							</div>
						</div>
						<div class="testmonial_wrap">
							<div class="single_testmonial d-flex align-items-center">
								<div class="test_thumb">
									<img
										src="${pageContext.request.contextPath}/resources/img/testmonial/1.png"
										alt="">
								</div>
								<div class="test_content">
									<h4>Jhon Walker</h4>
									<span>Head of web design</span>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua. Ut enim ad minim veniam, quis nostrud exerci.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- testmonial_area_end  -->

	<!-- team_area_start  -->
	<div class="team_area">
		<div class="container">
			<div class="row justify-content-center ">
				<div class="col-lg-6 col-md-10">
					<div class="section_title text-center mb-95">
						<h3>Meet Your Pet!</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna.</p>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-lg-4 col-md-6">
					<div class="single_team">
						<div class="thumb" onclick="javascript:goPetlist();" >
							<img
								src="${pageContext.request.contextPath}/resources/img/pet/${vo1.pet_saveimg}"
								alt="">
						</div>
						<div class="member_name text-center">
							<div class="mamber_inner">
								<h4>${vo1.pet_name }</h4>
								<p>${vo1.pet_type }</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single_team">
						<div class="thumb" onclick="javascript:goPetlist();" >
							<img
								src="${pageContext.request.contextPath}/resources/img/pet/${vo2.pet_saveimg}"
								alt="">
						</div>
						<div class="member_name text-center">
							<div class="mamber_inner">
								<h4>${vo2.pet_name }</h4>
								<p>${vo2.pet_type }</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single_team">
						<div class="thumb" onclick="javascript:goPetlist();" >
							<img
								src="${pageContext.request.contextPath}/resources/img/pet/${vo3.pet_saveimg}"
								alt="">
						</div>
						<div class="member_name text-center">
							<div class="mamber_inner">
								<h4>${vo3.pet_name }</h4>
								<p>${vo3.pet_type }</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- team_area_start  -->

	<div class="contact_anipat anipat_bg_1">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8">
					<div class="contact_text text-center">
						<div class="section_title text-center">
							<h3>Why go with Anipat?</h3>
							<p>Because we know that even the best technology is only as
								good as the people behind it. 24/7 tech support.</p>
						</div>
						<div
							class="contact_btn d-flex align-items-center justify-content-center">
							<a href="contact.html" class="boxed-btn4">Contact Us</a>
							<p>
								Or <a href="#"> +880 4664 216</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- footer_start  -->
	<footer class="footer">
		<div class="footer_top">
			<div class="container">
				<div class="row">
					<div class="col-xl-3 col-md-6 col-lg-3">
						<div class="footer_widget">
							<h3 class="footer_title">Contact Us</h3>
							<ul class="address_line">
								<li>+555 0000 565</li>
								<li><a href="#">Demomail@gmail.Com</a></li>
								<li>700, Green Lane, New York, USA</li>
							</ul>
						</div>
					</div>
					<div class="col-xl-3  col-md-6 col-lg-3">
						<div class="footer_widget">
							<h3 class="footer_title">Our Servces</h3>
							<ul class="links">
								<li><a href="${pageContext.request.contextPath}/faq">FAQ</a></li>
								<li><a href="#">Pet surgeries </a></li>
								<li><a href="#">Pet Adoption</a></li>
								<li><a href="#">Dog Insurance</a></li>
								<li><a href="#">Dog Insurance</a></li>
							</ul>
						</div>
					</div>
					<div class="col-xl-3  col-md-6 col-lg-3">
						<div class="footer_widget">
							<h3 class="footer_title">Quick Link</h3>
							<ul class="links">
								
								<li><a href="#">Privacy Policy</a></li>
								<li><a href="#">Terms of Service</a></li>
								<li><a href="#">Login info</a></li>
								<li><a href="#">Knowledge Base</a></li>
							</ul>
						</div>
					</div>
					<div class="col-xl-3 col-md-6 col-lg-3 ">
						<div class="footer_widget">
							<div class="footer_logo">
								<a href="#"> <img
									src="${pageContext.request.contextPath}/resources/img/logo.png"
									alt="">
								</a>
							</div>
							<p class="address_text">239 E 5th St, New York NY 10003, USA
							</p>
							<div class="socail_links">
								<ul>
									<li><a href="#"> <i class="ti-facebook"></i>
									</a></li>
									<li><a href="#"> <i class="ti-pinterest"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-google-plus"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-linkedin"></i>
									</a></li>
								</ul>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="copy-right_text">
			<div class="container">
				<div class="bordered_1px"></div>
				<div class="row">
					<div class="col-xl-12">
						<p class="copy_right text-center">
						<p>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with <i
								class="ti-heart" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>

					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- footer_end  -->


	<!-- JS here -->

	<script
		src="${pageContext.request.contextPath}/resources/js/vendor/modernizr-3.5.0.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/vendor/jquery-1.12.4.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/isotope.pkgd.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/ajax-form.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.counterup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/imagesloaded.pkgd.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/scrollIt.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.scrollUp.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/wow.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/nice-select.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/plugins.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/gijgo.min.js"></script>

	<!--contact js-->
	<script
		src="${pageContext.request.contextPath}/resources/js/contact.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.ajaxchimp.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.validate.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/mail-script.js"></script>

	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e38572e6a5383921e07dd07f847cb2b4&libraries=services"></script>
	
	<script>

	new WOW().init();
	console.log(${mainlist})
		$('#datepicker').datepicker({
			iconsLibrary : 'fontawesome',
			disableDaysOfWeek : [ 0, 0 ],
		//     icons: {
		//      rightIcon: '<span class="fa fa-caret-down"></span>'
		//  }
		});
		$('#datepicker2').datepicker({
			iconsLibrary : 'fontawesome',
			icons : {
				rightIcon : '<span class="fa fa-caret-down"></span>'
			}

		});
		var timepicker = $('#timepicker').timepicker({
			format : 'HH.MM'
		});
		function goPetlist(){
			location.href="${pageContext.request.contextPath}/pet/petlist";
		}
		var id= "${id}";
		console.log(id);
		

		
		
		
		$(document).ready(function() {
			  $(document).on('click','.button', function() {
				  
				    $(this).toggleClass('active');
				    $('.content').toggleClass('show'); 
				    $('.maincontainer').toggleClass('show');
				    $('.close').toggleClass('open');
			  

 			
		  });
			  
			  $(document).on('click','.close', function() {
			    $(this).toggleClass('open');
			 	$('.button').removeClass('active');
			    $('.content').removeClass('show');
			    $('.mapcontainer').removeClass('show');
			  });
			});	

 
 
		/************map 기능 구현한 부분**********************/
		// 마커를 담을 배열입니다
		var markers = [];

		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = {
		        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };  

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption); 

		// 장소 검색 객체를 생성합니다
		var ps = new kakao.maps.services.Places();  

		// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({zIndex:1});

		// 키워드로 장소를 검색합니다
		searchPlaces();

		// 키워드 검색을 요청하는 함수입니다
		function searchPlaces() {

		    var keyword = document.getElementById('keyword').value;

		    if (!keyword.replace(/^\s+|\s+$/g, '')) {
		        alert('키워드를 입력해주세요!');
		        return false;
		    }

		    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
		    ps.keywordSearch( keyword, placesSearchCB); 
		}

		// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
		function placesSearchCB(data, status, pagination) {
		    if (status === kakao.maps.services.Status.OK) {

		        // 정상적으로 검색이 완료됐으면
		        // 검색 목록과 마커를 표출합니다
		        displayPlaces(data);

		        // 페이지 번호를 표출합니다
		        displayPagination(pagination);

		    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

		        alert('검색 결과가 존재하지 않습니다.');
		        return;

		    } else if (status === kakao.maps.services.Status.ERROR) {

		        alert('검색 결과 중 오류가 발생했습니다.');
		        return;

		    }
		}

		// 검색 결과 목록과 마커를 표출하는 함수입니다
		function displayPlaces(places) {

		    var listEl = document.getElementById('placesList'), 
		    menuEl = document.getElementById('menu_wrap'),
		    fragment = document.createDocumentFragment(), 
		    bounds = new kakao.maps.LatLngBounds(), 
		    listStr = '';
		    
		    // 검색 결과 목록에 추가된 항목들을 제거합니다
		    removeAllChildNods(listEl);

		    // 지도에 표시되고 있는 마커를 제거합니다
		    removeMarker();
		    
		    for ( var i=0; i<places.length; i++ ) {

		        // 마커를 생성하고 지도에 표시합니다
		        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
		            marker = addMarker(placePosition, i), 
		            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

		        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
		        // LatLngBounds 객체에 좌표를 추가합니다
		        bounds.extend(placePosition);

		        // 마커와 검색결과 항목에 mouseover 했을때
		        // 해당 장소에 인포윈도우에 장소명을 표시합니다
		        // mouseout 했을 때는 인포윈도우를 닫습니다
		        (function(marker, title) {
		            kakao.maps.event.addListener(marker, 'mouseover', function() {
		                displayInfowindow(marker, title);
		            });

		            kakao.maps.event.addListener(marker, 'mouseout', function() {
		                infowindow.close();
		            });

		            itemEl.onmouseover =  function () {
		                displayInfowindow(marker, title);
		            };

		            itemEl.onmouseout =  function () {
		                infowindow.close();
		            };
		        })(marker, places[i].place_name);

		        fragment.appendChild(itemEl);
		    }

		    // 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
		    listEl.appendChild(fragment);
		    menuEl.scrollTop = 0;

		    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
		    map.setBounds(bounds);
		}

		// 검색결과 항목을 Element로 반환하는 함수입니다
		function getListItem(index, places) {

		    var el = document.createElement('li'),
		    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
		                '<div class="info">' +
		                '   <h5>' + places.place_name + '</h5>';

		    if (places.road_address_name) {
		        itemStr += '    <span>' + places.road_address_name + '</span>' +
		                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
		    } else {
		        itemStr += '    <span>' +  places.address_name  + '</span>'; 
		    }
		                 
		      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
		                '</div>';           

		    el.innerHTML = itemStr;
		    el.className = 'item';

		    return el;
		}

		// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
		function addMarker(position, idx, title) {
		    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
		        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
		        imgOptions =  {
		            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
		            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
		            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
		        },
		        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
		            marker = new kakao.maps.Marker({
		            position: position, // 마커의 위치
		            image: markerImage 
		        });

		    marker.setMap(map); // 지도 위에 마커를 표출합니다
		    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

		    return marker;
		}

		// 지도 위에 표시되고 있는 마커를 모두 제거합니다
		function removeMarker() {
		    for ( var i = 0; i < markers.length; i++ ) {
		        markers[i].setMap(null);
		    }   
		    markers = [];
		}

		// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
		function displayPagination(pagination) {
		    var paginationEl = document.getElementById('pagination'),
		        fragment = document.createDocumentFragment(),
		        i; 

		    // 기존에 추가된 페이지번호를 삭제합니다
		    while (paginationEl.hasChildNodes()) {
		        paginationEl.removeChild (paginationEl.lastChild);
		    }

		    for (i=1; i<=pagination.last; i++) {
		        var el = document.createElement('a');
		        el.href = "#";
		        el.innerHTML = i;

		        if (i===pagination.current) {
		            el.className = 'on';
		        } else {
		            el.onclick = (function(i) {
		                return function() {
		                    pagination.gotoPage(i);
		                }
		            })(i);
		        }

		        fragment.appendChild(el);
		    }
		    paginationEl.appendChild(fragment);
		}

		// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
		// 인포윈도우에 장소명을 표시합니다
		function displayInfowindow(marker, title) {
		    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

		    infowindow.setContent(content);
		    infowindow.open(map, marker);
		}

		 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
		function removeAllChildNods(el) {   
		    while (el.hasChildNodes()) {
		        el.removeChild (el.lastChild);
		    }
		}


		 
		var overlayOn = false, // 지도 위에 로드뷰 오버레이가 추가된 상태를 가지고 있을 변수
		container = document.getElementById('container'), // 지도와 로드뷰를 감싸고 있는 div 입니다
		mapWrapper = document.getElementById('mapWrapper'), // 지도를 감싸고 있는 div 입니다
		mapContainer = document.getElementById('map'), // 지도를 표시할 div 입니다 
		rvContainer = document.getElementById('roadview'); //로드뷰를 표시할 div 입니다

		var mapCenter = new kakao.maps.LatLng(33.45042 , 126.57091), // 지도의 중심좌표
		mapOption = {
		    center: mapCenter, // 지도의 중심좌표
		    level: 3 // 지도의 확대 레벨
		};

		//지도를 표시할 div와 지도 옵션으로 지도를 생성합니다
		var map = new kakao.maps.Map(mapContainer, mapOption);

		//로드뷰 객체를 생성합니다 
		var rv = new kakao.maps.Roadview(rvContainer); 

		//좌표로부터 로드뷰 파노라마 ID를 가져올 로드뷰 클라이언트 객체를 생성합니다 
		var rvClient = new kakao.maps.RoadviewClient(); 

		//로드뷰에 좌표가 바뀌었을 때 발생하는 이벤트를 등록합니다 
		kakao.maps.event.addListener(rv, 'position_changed', function() {

		// 현재 로드뷰의 위치 좌표를 얻어옵니다 
		var rvPosition = rv.getPosition();

		// 지도의 중심을 현재 로드뷰의 위치로 설정합니다
		map.setCenter(rvPosition);

		// 지도 위에 로드뷰 도로 오버레이가 추가된 상태이면
		if(overlayOn) {
		    // 마커의 위치를 현재 로드뷰의 위치로 설정합니다
		    marker.setPosition(rvPosition);
		}
		});

		//마커 이미지를 생성합니다
		var markImage = new kakao.maps.MarkerImage(
		'https://t1.daumcdn.net/localimg/localimages/07/2018/pc/roadview_minimap_wk_2018.png',
		new kakao.maps.Size(26, 46),
		{
		    // 스프라이트 이미지를 사용합니다.
		    // 스프라이트 이미지 전체의 크기를 지정하고
		    spriteSize: new kakao.maps.Size(1666, 168),
		    // 사용하고 싶은 영역의 좌상단 좌표를 입력합니다.
		    // background-position으로 지정하는 값이며 부호는 반대입니다.
		    spriteOrigin: new kakao.maps.Point(705, 114),
		    offset: new kakao.maps.Point(13, 46)
		}
		);

		//드래그가 가능한 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		image : markImage,
		position: mapCenter,
		draggable: true
		});

		//마커에 dragend 이벤트를 등록합니다
		kakao.maps.event.addListener(marker, 'dragend', function(mouseEvent) {

		// 현재 마커가 놓인 자리의 좌표입니다 
		var position = marker.getPosition();

		// 마커가 놓인 위치를 기준으로 로드뷰를 설정합니다
		toggleRoadview(position);
		});

		//지도에 클릭 이벤트를 등록합니다
		kakao.maps.event.addListener(map, 'click', function(mouseEvent){

		// 지도 위에 로드뷰 도로 오버레이가 추가된 상태가 아니면 클릭이벤트를 무시합니다 
		if(!overlayOn) {
		    return;
		}

		// 클릭한 위치의 좌표입니다 
		var position = mouseEvent.latLng;

		// 마커를 클릭한 위치로 옮깁니다
		marker.setPosition(position);

		// 클락한 위치를 기준으로 로드뷰를 설정합니다
		toggleRoadview(position);
		});

		//전달받은 좌표(position)에 가까운 로드뷰의 파노라마 ID를 추출하여
		//로드뷰를 설정하는 함수입니다
		function toggleRoadview(position){
		rvClient.getNearestPanoId(position, 50, function(panoId) {
		    // 파노라마 ID가 null 이면 로드뷰를 숨깁니다
		    if (panoId === null) {
		        toggleMapWrapper(true, position);
		    } else {
		     toggleMapWrapper(false, position);

		        // panoId로 로드뷰를 설정합니다
		        rv.setPanoId(panoId, position);
		    }
		});
		}

		//지도를 감싸고 있는 div의 크기를 조정하는 함수입니다
		function toggleMapWrapper(active, position) {
		if (active) {

		    // 지도를 감싸고 있는 div의 너비가 100%가 되도록 class를 변경합니다 
		    container.className = '';

		    // 지도의 크기가 변경되었기 때문에 relayout 함수를 호출합니다
		    map.relayout();

		    // 지도의 너비가 변경될 때 지도중심을 입력받은 위치(position)로 설정합니다
		    map.setCenter(position);
		} else {

		    // 지도만 보여지고 있는 상태이면 지도의 너비가 50%가 되도록 class를 변경하여
		    // 로드뷰가 함께 표시되게 합니다
		    if (container.className.indexOf('view_roadview') === -1) {
		        container.className = 'view_roadview';

		        // 지도의 크기가 변경되었기 때문에 relayout 함수를 호출합니다
		        map.relayout();

		        // 지도의 너비가 변경될 때 지도중심을 입력받은 위치(position)로 설정합니다
		        map.setCenter(position);
		    }
		}
		}

		//지도 위의 로드뷰 도로 오버레이를 추가,제거하는 함수입니다
		function toggleOverlay(active) {
		if (active) {
		    overlayOn = true;

		    // 지도 위에 로드뷰 도로 오버레이를 추가합니다
		    map.addOverlayMapTypeId(kakao.maps.MapTypeId.ROADVIEW);

		    // 지도 위에 마커를 표시합니다
		    marker.setMap(map);

		    // 마커의 위치를 지도 중심으로 설정합니다 
		    marker.setPosition(map.getCenter());

		    // 로드뷰의 위치를 지도 중심으로 설정합니다
		    toggleRoadview(map.getCenter());
		} else {
		    overlayOn = false;

		    // 지도 위의 로드뷰 도로 오버레이를 제거합니다
		    map.removeOverlayMapTypeId(kakao.maps.MapTypeId.ROADVIEW);

		    // 지도 위의 마커를 제거합니다
		    marker.setMap(null);
		}
		}

		//지도 위의 로드뷰 버튼을 눌렀을 때 호출되는 함수입니다
		function setRoadviewRoad() {
		var control = document.getElementById('roadviewControl');

		// 버튼이 눌린 상태가 아니면
		if (control.className.indexOf('active') === -1) {
		    control.className = 'active';

		    // 로드뷰 도로 오버레이가 보이게 합니다
		    toggleOverlay(true);
		} else {
		    control.className = '';

		    // 로드뷰 도로 오버레이를 제거합니다
		    toggleOverlay(false);
		}
		}

		//로드뷰에서 X버튼을 눌렀을 때 로드뷰를 지도 뒤로 숨기는 함수입니다
		function closeRoadview() {
		var position = marker.getPosition();
		toggleMapWrapper(true, position);
		}	
	</script>
</body>

</html>