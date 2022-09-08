<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.fnc {
  /* you can add color names and their values here
  and then simply add classes like .m--blend-$colorName to .fnc-slide 
  to apply specific color for mask blend mode */
}
.fnc-slider {
  overflow: hidden;
  box-sizing: border-box;
  position: relative;
  height: 100vh;
}
.fnc-slider *, .fnc-slider *:before, .fnc-slider *:after {
  box-sizing: border-box;
}
.fnc-slider__slides {
  position: relative;
  height: 100%;
  transition: transform 1s 0.6666666667s;
}
.fnc-slider .m--blend-dark .fnc-slide__inner {
  background-color: #8a8a8a;
}
.fnc-slider .m--blend-dark .fnc-slide__mask-inner {
  background-color: #575757;
}
.fnc-slider .m--navbg-dark {
  background-color: #575757;
}
.fnc-slider .m--blend-green .fnc-slide__inner {
  background-color: #6d9b98;
}
.fnc-slider .m--blend-green .fnc-slide__mask-inner {
  background-color: #42605E;
}
.fnc-slider .m--navbg-green {
  background-color: #42605E;
}
.fnc-slider .m--blend-red .fnc-slide__inner {
  background-color: #ea2329;
}
.fnc-slider .m--blend-red .fnc-slide__mask-inner {
  background-color: #990e13;
}
.fnc-slider .m--navbg-red {
  background-color: #990e13;
}
.fnc-slider .m--blend-blue .fnc-slide__inner {
  background-color: #59aecb;
}
.fnc-slider .m--blend-blue .fnc-slide__mask-inner {
  background-color: #2D7791;
}
.fnc-slider .m--navbg-blue {
  background-color: #2D7791;
}
.fnc-slide {
  overflow: hidden;
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  transform: translate3d(0, 0, 0);
}
.fnc-slide.m--before-sliding {
  z-index: 2 !important;
  transform: translate3d(100%, 0, 0);
}
.fnc-slide.m--active-slide {
  z-index: 1;
  transition: transform 1s 0.6666666667s ease-in-out;
  transform: translate3d(0, 0, 0);
}
.fnc-slide__inner {
  position: relative;
  height: 100%;
  background-size: cover;
  background-position: center top;
  transform: translate3d(0, 0, 0);
}
.m--global-blending-active .fnc-slide__inner, .m--blend-bg-active .fnc-slide__inner {
  background-blend-mode: luminosity;
}
.m--before-sliding .fnc-slide__inner {
  transform: translate3d(-100%, 0, 0);
}
.m--active-slide .fnc-slide__inner {
  transition: transform 1s 0.6666666667s ease-in-out;
  transform: translate3d(0, 0, 0);
}
.fnc-slide__mask {
  overflow: hidden;
  z-index: 1;
  position: absolute;
  right: 60%;
  top: 15%;
  width: 50.25vh;
  height: 67vh;
  margin-right: -90px;
  -webkit-clip-path: polygon(0 0, 100% 0, 100% 100%, 0 100%, 0 0, 6vh 0, 6vh 61vh, 44vh 61vh, 44vh 6vh, 6vh 6vh);
          clip-path: polygon(0 0, 100% 0, 100% 100%, 0 100%, 0 0, 6vh 0, 6vh 61vh, 44vh 61vh, 44vh 6vh, 6vh 6vh);
  transform-origin: 50% 0;
  transition-timing-function: ease-in-out;
}
.m--before-sliding .fnc-slide__mask {
  transform: rotate(-10deg) translate3d(200px, 0, 0);
  opacity: 0;
}
.m--active-slide .fnc-slide__mask {
  transition: transform 0.7s 1.2222222222s, opacity 0.35s 1.2222222222s;
  transform: translate3d(0, 0, 0);
  opacity: 1;
}
.m--previous-slide .fnc-slide__mask {
  transition: transform 0.7s 0.3333333333s, opacity 0.35s 0.6833333333s;
  transform: rotate(10deg) translate3d(-200px, 0, 0);
  opacity: 0;
}
.fnc-slide__mask-inner {
  z-index: -1;
  position: absolute;
  left: 50%;
  top: 50%;
  width: 100vw;
  height: 100vh;
  margin-left: -50vw;
  margin-top: -50vh;
  background-size: cover;
  background-position: center center;
  background-blend-mode: luminosity;
  transform-origin: 50% 16.5vh;
  transition-timing-function: ease-in-out;
}
.m--before-sliding .fnc-slide__mask-inner {
  transform: translateY(0) rotate(10deg) translateX(-200px) translateZ(0);
}
.m--active-slide .fnc-slide__mask-inner {
  transition: transform 0.7s 1.2222222222s;
  transform: translateX(0);
}
.m--previous-slide .fnc-slide__mask-inner {
  transition: transform 0.7s 0.3333333333s;
  transform: translateY(0) rotate(-10deg) translateX(200px) translateZ(0);
}
.fnc-slide__content {
  z-index: 2;
  position: absolute;
  left: 40%;
  top: 40%;
}
.fnc-slide__heading {
  margin-bottom: 10px;
  text-transform: uppercase;
}
.fnc-slide__heading-line {
  overflow: hidden;
  position: relative;
  padding-right: 20px;
  font-size: 50px;
  color: #fff;
  word-spacing: 10px;
}
.fnc-slide__heading-line:nth-child(2) {
  padding-left: 30px;
}
.m--before-sliding .fnc-slide__heading-line {
  transform: translateY(100%);
}
.m--active-slide .fnc-slide__heading-line {
  transition: transform 1.5s 1s;
  transform: translateY(0);
}
.m--previous-slide .fnc-slide__heading-line {
  transition: transform 1.5s;
  transform: translateY(-100%);
}
.fnc-slide__heading-line span {
  display: block;
}
.m--before-sliding .fnc-slide__heading-line span {
  transform: translateY(-100%);
}
.m--active-slide .fnc-slide__heading-line span {
  transition: transform 1.5s 1s;
  transform: translateY(0);
}
.m--previous-slide .fnc-slide__heading-line span {
  transition: transform 1.5s;
  transform: translateY(100%);
}
.fnc-slide__action-btn {
  position: relative;
  margin-left: 200px;
  padding: 5px 15px;
  font-size: 20px;
  line-height: 1;
  color: transparent;
  border: none;
  text-transform: uppercase;
  background: transparent;
  cursor: pointer;
  text-align: center;
  outline: none;
}
.fnc-slide__action-btn span {
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  perspective: 1000px;
  transform-style: preserve-3d;
  transition: transform 0.3s;
  transform-origin: 50% 0;
  line-height: 30px;
  color: #fff;
}
.fnc-slide__action-btn span:before {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  border: 2px solid #fff;
  border-top: none;
  border-bottom: none;
}
.fnc-slide__action-btn span:after {
  content: attr(data-text);
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  line-height: 30px;
  background: #1F2833;
  opacity: 0;
  transform-origin: 50% 0;
  transform: translateY(100%) rotateX(-90deg);
  transition: opacity 0.15s 0.15s;
}
.fnc-slide__action-btn:hover span {
  transform: rotateX(90deg);
}
.fnc-slide__action-btn:hover span:after {
  opacity: 1;
  transition: opacity 0.15s;
}
.fnc-nav {
  z-index: 5;
  position: absolute;
  right: 0;
  bottom: 0;
}
.fnc-nav__bgs {
  z-index: -1;
  overflow: hidden;
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
}
.fnc-nav__bg {
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
}
.fnc-nav__bg.m--nav-bg-before {
  z-index: 2 !important;
  transform: translateX(100%);
}
.fnc-nav__bg.m--active-nav-bg {
  z-index: 1;
  transition: transform 1s 0.6666666667s;
  transform: translateX(0);
}
.fnc-nav__controls {
  font-size: 0;
}
.fnc-nav__control {
  overflow: hidden;
  position: relative;
  display: inline-block;
  vertical-align: top;
  width: 100px;
  height: 50px;
  font-size: 14px;
  color: #fff;
  text-transform: uppercase;
  background: transparent;
  border: none;
  outline: none;
  cursor: pointer;
  transition: background-color 0.5s;
}
.fnc-nav__control.m--active-control {
  background: #1F2833;
}
.fnc-nav__control-progress {
  position: absolute;
  left: 0;
  bottom: 0;
  width: 100%;
  height: 2px;
  background: #fff;
  transform-origin: 0 50%;
  transform: scaleX(0);
  transition-timing-function: linear !important;
}
.m--with-autosliding .m--active-control .fnc-nav__control-progress {
  transform: scaleX(1);
}
.m--prev-control .fnc-nav__control-progress {
  transform: translateX(100%);
  transition: transform 0.5s !important;
}
.m--reset-progress .fnc-nav__control-progress {
  transform: scaleX(0);
  transition: transform 0s 0s !important;
}
.m--autosliding-blocked .fnc-nav__control-progress {
  transition: all 0s 0s !important;
  transform: scaleX(0) !important;
}

/* NOT PART OF COMMON SLIDER STYLES */
body {
  margin: 0;
}

.demo-cont {
  overflow: hidden;
  position: relative;
  height: 100vh;
  perspective: 1500px;
  background: #000;
}
.demo-cont__credits {
  box-sizing: border-box;
  overflow-y: auto;
  z-index: 1;
  position: absolute;
  right: 0;
  top: 0;
  width: 400px;
  height: 100%;
  padding: 20px 10px 30px;
  background: #303030;
  font-family: "Open Sans", Helvetica, Arial, sans-serif;
  color: #fff;
  text-align: center;
  transition: transform 0.7s;
  transform: translate3d(100%, 0, 0) rotateY(-45deg);
  will-change: transform;
}
.credits-active .demo-cont__credits {
  transition: transform 0.7s 0.2333333333s;
  transform: translate3d(0, 0, 0);
}
.demo-cont__credits *, .demo-cont__credits *:before, .demo-cont__credits *:after {
  box-sizing: border-box;
}
.demo-cont__credits-close {
  position: absolute;
  right: 20px;
  top: 20px;
  width: 28px;
  height: 28px;
  cursor: pointer;
}
.demo-cont__credits-close:before, .demo-cont__credits-close:after {
  content: "";
  position: absolute;
  left: 0;
  top: 50%;
  width: 100%;
  height: 2px;
  margin-top: -1px;
  background: #fff;
}
.demo-cont__credits-close:before {
  transform: rotate(45deg);
}
.demo-cont__credits-close:after {
  transform: rotate(-45deg);
}
.demo-cont__credits-heading {
  text-transform: uppercase;
  font-size: 40px;
  margin-bottom: 20px;
}
.demo-cont__credits-img {
  display: block;
  width: 60%;
  margin: 0 auto 30px;
  border-radius: 10px;
}
.demo-cont__credits-name {
  margin-bottom: 20px;
  font-size: 30px;
}
.demo-cont__credits-link {
  display: block;
  margin-bottom: 10px;
  font-size: 24px;
  color: #fff;
}
.demo-cont__credits-blend {
  font-size: 30px;
  margin-bottom: 10px;
}

.example-slider {
  z-index: 2;
  transform: translate3d(0, 0, 0);
  transition: transform 0.7s;
}
.credits-active .example-slider {
  transform: translate3d(-400px, 0, 0) rotateY(10deg) scale(0.9);
}
.example-slider .fnc-slide-1 .fnc-slide__inner,
.example-slider .fnc-slide-1 .fnc-slide__mask-inner {
  background-image: url("https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA4MjdfMTUx%2FMDAxNjYxNTgyNjk5MTMz.1B4UY_Shu3aR1Q1j95xoOmIviJqv_h_spGlsN1tx5NMg.22YKfCaM4wpnZDvGYtEFDlChfGaVM7ZRUuU5hH72y6cg.JPEG.mihong21%2F20220825%25A3%25DF113324.jpg&type=sc960_832");
}
.example-slider .fnc-slide-2 .fnc-slide__inner,
.example-slider .fnc-slide-2 .fnc-slide__mask-inner {
  background-image: url("https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA4MTNfNDgg%2FMDAxNjYwMzc1NTQwODg4.bVZibx5Mu0xRBuAa1bqHEAbcxdGI91iXifoZeauPf_sg.qb-CcdxkjlDwNfrYGB6Yu0AG9sA52EkhUQRlPYzovC8g.JPEG.guswn4769%2FIMG_4540.jpg&type=sc960_832");
}
.example-slider .fnc-slide-3 .fnc-slide__inner,
.example-slider .fnc-slide-3 .fnc-slide__mask-inner {
  background-image: url("https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA4MjFfMTUz%2FMDAxNjYxMDgzMzM5ODk1.GebtX3acIGLfa-t-pfUfD9xRRtMpNO0Kr5bPM66AOj0g.jLIpQi6_PjX_1qVtNUP7DXQyCCup_h48DLyGpRiZJzUg.JPEG.ggoa95%2FIMG_1059.jpg&type=sc960_832");
}
.example-slider .fnc-slide-3 .fnc-slide__inner:before {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  background: rgba(255, 255, 255, 0.1);
}
.example-slider .fnc-slide-4 .fnc-slide__inner,
.example-slider .fnc-slide-4 .fnc-slide__mask-inner {
  background-image: url("https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA4MDFfMjYz%2FMDAxNjU5Mjk3MjI5MzEx.LgaZvplaDA0lGRc7N_AkvBorPs1r_N9HgvtIGpSSz5Yg.zMs9XG0Su1_UA4oXheAz-gnmNl-fmMfPJ99WrLcN94Mg.JPEG.myserim2020%2F20220731%25A3%25DF200430.jpg&type=sc960_832");
}
.example-slider .fnc-slide-4 .fnc-slide__inner:before {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.2);
}
.example-slider .fnc-slide__heading,
.example-slider .fnc-slide__action-btn,
.example-slider .fnc-nav__control {
  font-family: "Open Sans", Helvetica, Arial, sans-serif;
}

/* COLORFUL SWITCH STYLES 
   ORIGINAL DEMO - https://codepen.io/suez/pen/WQjwOb */
.colorful-switch {
  position: relative;
  width: 180px;
  height: 77.1428571429px;
  margin: 0 auto;
  border-radius: 32.1428571429px;
  background: #cfcfcf;
}
.colorful-switch:before {
  content: "";
  z-index: -1;
  position: absolute;
  left: -5px;
  top: -5px;
  width: 190px;
  height: 87.1428571429px;
  border-radius: 37.1428571429px;
  background: #314239;
  transition: background-color 0.3s;
}
.colorful-switch:hover:before {
  background: #4C735F;
}
.colorful-switch__checkbox {
  z-index: -10;
  position: absolute;
  left: 0;
  top: 0;
  opacity: 0;
}
.colorful-switch__label {
  z-index: 1;
  overflow: hidden;
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  border-radius: 32.1428571429px;
  cursor: pointer;
}
.colorful-switch__bg {
  position: absolute;
  left: 0;
  top: 0;
  width: 540px;
  height: 100%;
  background: linear-gradient(90deg, #14DCD6 0, #10E7BD 180px, #EF9C29 360px, #E76339 100%);
  transition: transform 0.5s;
  transform: translate3d(-360px, 0, 0);
}
.colorful-switch__checkbox:checked ~ .colorful-switch__label .colorful-switch__bg {
  transform: translate3d(0, 0, 0);
}
.colorful-switch__dot {
  position: absolute;
  left: 131.1428571429px;
  top: 50%;
  width: 5.1428571429px;
  height: 5.1428571429px;
  margin-left: -2.5714285714px;
  margin-top: -2.5714285714px;
  border-radius: 50%;
  background: #fff;
  transition: transform 0.5s;
  transform: translate3d(0, 0, 0);
}
.colorful-switch__checkbox:checked ~ .colorful-switch__label .colorful-switch__dot {
  transform: translate3d(-80.3571428571px, 0, 0);
}
.colorful-switch__on {
  position: absolute;
  left: 104.1428571429px;
  top: 22.5px;
  width: 19.2857142857px;
  height: 36px;
  transition: transform 0.5s;
  transform: translate3d(0, 0, 0);
}
.colorful-switch__checkbox:checked ~ .colorful-switch__label .colorful-switch__on {
  transform: translate3d(-80.3571428571px, 0, 0);
}
.colorful-switch__on__inner {
  position: absolute;
  width: 100%;
  height: 100%;
  transition: transform 0.25s 0s cubic-bezier(0.52, -0.96, 0.51, 1.28);
  transform-origin: 100% 50%;
  transform: rotate(45deg) scale(0) translateZ(0);
}
.colorful-switch__checkbox:checked ~ .colorful-switch__label .colorful-switch__on__inner {
  transition: transform 0.25s 0.25s cubic-bezier(0.67, -0.16, 0.47, 1.61);
  transform: rotate(45deg) scale(1) translateZ(0);
}
.colorful-switch__on__inner:before, .colorful-switch__on__inner:after {
  content: "";
  position: absolute;
  border-radius: 2.5714285714px;
  background: #fff;
}
.colorful-switch__on__inner:before {
  left: 0;
  bottom: 0;
  width: 100%;
  height: 6.1428571429px;
}
.colorful-switch__on__inner:after {
  right: 0;
  top: 0;
  width: 6.1428571429px;
  height: 100%;
}
.colorful-switch__off {
  position: absolute;
  left: 131.1428571429px;
  top: 50%;
  width: 41.1428571429px;
  height: 41.1428571429px;
  margin-left: -20.5714285714px;
  margin-top: -20.5714285714px;
  transition: transform 0.5s;
  transform: translate3d(0, 0, 0);
}
.colorful-switch__checkbox:checked ~ .colorful-switch__label .colorful-switch__off {
  transform: translate3d(-80.3571428571px, 0, 0);
}
.colorful-switch__off:before, .colorful-switch__off:after {
  content: "";
  position: absolute;
  left: 0;
  top: 50%;
  width: 100%;
  height: 5.1428571429px;
  margin-top: -2.5714285714px;
  border-radius: 2.5714285714px;
  background: #fff;
  transition: transform 0.25s 0.25s;
}
.colorful-switch__checkbox:checked ~ .colorful-switch__label .colorful-switch__off:before, .colorful-switch__checkbox:checked ~ .colorful-switch__label .colorful-switch__off:after {
  transition-delay: 0s;
}
.colorful-switch__off:before {
  transform: rotate(45deg) scaleX(1) translateZ(0);
}
.colorful-switch__checkbox:checked ~ .colorful-switch__label .colorful-switch__off:before {
  transform: rotate(45deg) scaleX(0) translateZ(0);
}
.colorful-switch__off:after {
  transition-timing-function: cubic-bezier(0.67, -0.16, 0.47, 1.61);
  transform: rotate(-45deg) scaleX(1) translateZ(0);
}
.colorful-switch__checkbox:checked ~ .colorful-switch__label .colorful-switch__off:after {
  transition-timing-function: ease;
  transform: rotate(-45deg) scaleX(0) translateZ(0);
}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <!-- 
Please note, that you can apply .m--global-blending-active to .fnc-slider 
to enable blend-mode for all background-images or apply .m--blend-bg-active
to some specific slides (.fnc-slide). It's disabled by default in this demo,
because it requires specific images, where more than 50% of bg is transparent or monotone
-->
<div class="demo-cont">
  <!-- slider start -->
  <div class="fnc-slider example-slider">
    <div class="fnc-slider__slides">
      <!-- slide start -->
      <div class="fnc-slide m--blend-green m--active-slide">
        <div class="fnc-slide__inner">
          <div class="fnc-slide__mask">
            <div class="fnc-slide__mask-inner"></div>
          </div>
          <div class="fnc-slide__content">
            <h2 class="fnc-slide__heading">
              <div class="fnc-slide__heading-line">
                <span>Black</span>
              </div>
              <div class="fnc-slide__heading-line">
                <span>Widow</span>
              </div>
            </h2>
            <button type="button" class="fnc-slide__action-btn">
              Credits
              <span data-text="Credits">Credits</span>
            </button>
          </div>
        </div>
      </div>
      <!-- slide end -->
      <!-- slide start -->
      <div class="fnc-slide m--blend-dark">
        <div class="fnc-slide__inner">
          <div class="fnc-slide__mask">
            <div class="fnc-slide__mask-inner"></div>
          </div>
          <div class="fnc-slide__content">
            <h2 class="fnc-slide__heading">
              <div class="fnc-slide__heading-line">
                <span>Captain</span>
              </div>
              <div class="fnc-slide__heading-line">
                <span>America</span>
              </div>
            </h2>
            <button type="button" class="fnc-slide__action-btn">
              Credits
              <span data-text="Credits">Credits</span>
            </button>
          </div>
        </div>
      </div>
      <!-- slide end -->
      <!-- slide start -->
      <div class="fnc-slide m--blend-red">
        <div class="fnc-slide__inner">
          <div class="fnc-slide__mask">
            <div class="fnc-slide__mask-inner"></div>
          </div>
          <div class="fnc-slide__content">
            <h2 class="fnc-slide__heading">
              <div class="fnc-slide__heading-line">
                <span>Iron</span>
              </div>
              <div class="fnc-slide__heading-line">
                <span>Man</span>
              </div>
            </h2>
            <button type="button" class="fnc-slide__action-btn">
              Credits
              <span data-text="Credits">Credits</span>
            </button>
          </div>
        </div>
      </div>
      <!-- slide end -->
      <!-- slide start -->
      <div class="fnc-slide m--blend-blue">
        <div class="fnc-slide__inner">
          <div class="fnc-slide__mask">
            <div class="fnc-slide__mask-inner"></div>
          </div>
          <div class="fnc-slide__content">
            <h2 class="fnc-slide__heading">
              <div class="fnc-slide__heading-line">
                <span>Thor</span>
              </div>
              <div class="fnc-slide__heading-line">
                <span>Just Thor</span>
              </div>
            </h2>
            <button type="button" class="fnc-slide__action-btn">
              Credits
              <span data-text="Credits">Credits</span>
            </button>
          </div>
        </div>
      </div>
      <!-- slide end -->
    </div>
    <nav class="fnc-nav">
      <div class="fnc-nav__bgs">
        <div class="fnc-nav__bg m--navbg-green m--active-nav-bg"></div>
        <div class="fnc-nav__bg m--navbg-dark"></div>
        <div class="fnc-nav__bg m--navbg-red"></div>
        <div class="fnc-nav__bg m--navbg-blue"></div>
      </div>
      <div class="fnc-nav__controls">
        <button class="fnc-nav__control">
          Black Widow
          <span class="fnc-nav__control-progress"></span>
        </button>
        <button class="fnc-nav__control">
          Captain America
          <span class="fnc-nav__control-progress"></span>
        </button>
        <button class="fnc-nav__control">
          Iron Man
          <span class="fnc-nav__control-progress"></span>
        </button>
        <button class="fnc-nav__control">
          Thor
          <span class="fnc-nav__control-progress"></span>
        </button>
      </div>
    </nav>
  </div>
  <!-- slider end -->
  <div class="demo-cont__credits">
    <div class="demo-cont__credits-close"></div>
    <h2 class="demo-cont__credits-heading">Made by</h2>
    <img src="//s3-us-west-2.amazonaws.com/s.cdpn.io/142996/profile/profile-512_5.jpg" alt="" class="demo-cont__credits-img" />
    <h3 class="demo-cont__credits-name">Nikolay Talanov</h3>
    <a href="https://codepen.io/suez/" target="_blank" class="demo-cont__credits-link">My codepen</a>
    <a href="https://twitter.com/NikolayTalanov" target="_blank" class="demo-cont__credits-link">My twitter</a>
    <h2 class="demo-cont__credits-heading">Based on</h2>
    <a href="https://dribbble.com/shots/2375246-Fashion-Butique-slider-animation" target="_blank" class="demo-cont__credits-link">Concept by Kreativa Studio</a>
    <h4 class="demo-cont__credits-blend">Global Blend Mode</h4>
    <div class="colorful-switch">
      <input type="checkbox" class="colorful-switch__checkbox js-activate-global-blending" id="colorful-switch-cb" />
      <label class="colorful-switch__label" for="colorful-switch-cb">
        <span class="colorful-switch__bg"></span>
        <span class="colorful-switch__dot"></span>
        <span class="colorful-switch__on">
          <span class="colorful-switch__on__inner"></span>
        </span>
        <span class="colorful-switch__off"></span>
      </label>
    </div>
  </div>
</div>
    <script type="text/javascript">
    (function() {

    	  var $$ = function(selector, context) {
    	    var context = context || document;
    	    var elements = context.querySelectorAll(selector);
    	    return [].slice.call(elements);
    	  };

    	  function _fncSliderInit($slider, options) {
    	    var prefix = ".fnc-";

    	    var $slider = $slider;
    	    var $slidesCont = $slider.querySelector(prefix + "slider__slides");
    	    var $slides = $$(prefix + "slide", $slider);
    	    var $controls = $$(prefix + "nav__control", $slider);
    	    var $controlsBgs = $$(prefix + "nav__bg", $slider);
    	    var $progressAS = $$(prefix + "nav__control-progress", $slider);

    	    var numOfSlides = $slides.length;
    	    var curSlide = 1;
    	    var sliding = false;
    	    var slidingAT = +parseFloat(getComputedStyle($slidesCont)["transition-duration"]) * 1000;
    	    var slidingDelay = +parseFloat(getComputedStyle($slidesCont)["transition-delay"]) * 1000;

    	    var autoSlidingActive = false;
    	    var autoSlidingTO;
    	    var autoSlidingDelay = 5000; // default autosliding delay value
    	    var autoSlidingBlocked = false;

    	    var $activeSlide;
    	    var $activeControlsBg;
    	    var $prevControl;

    	    function setIDs() {
    	      $slides.forEach(function($slide, index) {
    	        $slide.classList.add("fnc-slide-" + (index + 1));
    	      });

    	      $controls.forEach(function($control, index) {
    	        $control.setAttribute("data-slide", index + 1);
    	        $control.classList.add("fnc-nav__control-" + (index + 1));
    	      });

    	      $controlsBgs.forEach(function($bg, index) {
    	        $bg.classList.add("fnc-nav__bg-" + (index + 1));
    	      });
    	    };

    	    setIDs();

    	    function afterSlidingHandler() {
    	      $slider.querySelector(".m--previous-slide").classList.remove("m--active-slide", "m--previous-slide");
    	      $slider.querySelector(".m--previous-nav-bg").classList.remove("m--active-nav-bg", "m--previous-nav-bg");

    	      $activeSlide.classList.remove("m--before-sliding");
    	      $activeControlsBg.classList.remove("m--nav-bg-before");
    	      $prevControl.classList.remove("m--prev-control");
    	      $prevControl.classList.add("m--reset-progress");
    	      var triggerLayout = $prevControl.offsetTop;
    	      $prevControl.classList.remove("m--reset-progress");

    	      sliding = false;
    	      var layoutTrigger = $slider.offsetTop;

    	      if (autoSlidingActive && !autoSlidingBlocked) {
    	        setAutoslidingTO();
    	      }
    	    };

    	    function performSliding(slideID) {
    	      if (sliding) return;
    	      sliding = true;
    	      window.clearTimeout(autoSlidingTO);
    	      curSlide = slideID;

    	      $prevControl = $slider.querySelector(".m--active-control");
    	      $prevControl.classList.remove("m--active-control");
    	      $prevControl.classList.add("m--prev-control");
    	      $slider.querySelector(prefix + "nav__control-" + slideID).classList.add("m--active-control");

    	      $activeSlide = $slider.querySelector(prefix + "slide-" + slideID);
    	      $activeControlsBg = $slider.querySelector(prefix + "nav__bg-" + slideID);

    	      $slider.querySelector(".m--active-slide").classList.add("m--previous-slide");
    	      $slider.querySelector(".m--active-nav-bg").classList.add("m--previous-nav-bg");

    	      $activeSlide.classList.add("m--before-sliding");
    	      $activeControlsBg.classList.add("m--nav-bg-before");

    	      var layoutTrigger = $activeSlide.offsetTop;

    	      $activeSlide.classList.add("m--active-slide");
    	      $activeControlsBg.classList.add("m--active-nav-bg");

    	      setTimeout(afterSlidingHandler, slidingAT + slidingDelay);
    	    };



    	    function controlClickHandler() {
    	      if (sliding) return;
    	      if (this.classList.contains("m--active-control")) return;
    	      if (options.blockASafterClick) {
    	        autoSlidingBlocked = true;
    	        $slider.classList.add("m--autosliding-blocked");
    	      }

    	      var slideID = +this.getAttribute("data-slide");

    	      performSliding(slideID);
    	    };

    	    $controls.forEach(function($control) {
    	      $control.addEventListener("click", controlClickHandler);
    	    });

    	    function setAutoslidingTO() {
    	      window.clearTimeout(autoSlidingTO);
    	      var delay = +options.autoSlidingDelay || autoSlidingDelay;
    	      curSlide++;
    	      if (curSlide > numOfSlides) curSlide = 1;

    	      autoSlidingTO = setTimeout(function() {
    	        performSliding(curSlide);
    	      }, delay);
    	    };

    	    if (options.autoSliding || +options.autoSlidingDelay > 0) {
    	      if (options.autoSliding === false) return;
    	      
    	      autoSlidingActive = true;
    	      setAutoslidingTO();
    	      
    	      $slider.classList.add("m--with-autosliding");
    	      var triggerLayout = $slider.offsetTop;
    	      
    	      var delay = +options.autoSlidingDelay || autoSlidingDelay;
    	      delay += slidingDelay + slidingAT;
    	      
    	      $progressAS.forEach(function($progress) {
    	        $progress.style.transition = "transform " + (delay / 1000) + "s";
    	      });
    	    }
    	    
    	    $slider.querySelector(".fnc-nav__control:first-child").classList.add("m--active-control");

    	  };

    	  var fncSlider = function(sliderSelector, options) {
    	    var $sliders = $$(sliderSelector);

    	    $sliders.forEach(function($slider) {
    	      _fncSliderInit($slider, options);
    	    });
    	  };

    	  window.fncSlider = fncSlider;
    	}());

    	/* not part of the slider scripts */

    	/* Slider initialization
    	options:
    	autoSliding - boolean
    	autoSlidingDelay - delay in ms. If audoSliding is on and no value provided, default value is 5000
    	blockASafterClick - boolean. If user clicked any sliding control, autosliding won't start again
    	*/
    	fncSlider(".example-slider", {autoSlidingDelay: 4000});

    	var $demoCont = document.querySelector(".demo-cont");

    	[].slice.call(document.querySelectorAll(".fnc-slide__action-btn")).forEach(function($btn) {
    	  $btn.addEventListener("click", function() {
    	    $demoCont.classList.toggle("credits-active");
    	  });
    	});

    	document.querySelector(".demo-cont__credits-close").addEventListener("click", function() {
    	  $demoCont.classList.remove("credits-active");
    	});

    	document.querySelector(".js-activate-global-blending").addEventListener("click", function() {
    	  document.querySelector(".example-slider").classList.toggle("m--global-blending-active");
    	});</script>
</body>
</html>