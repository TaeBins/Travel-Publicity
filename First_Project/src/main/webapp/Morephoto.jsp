<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>BSH</title>
		<meta name="description" content="A simple slideshow component with individual slide layouts and effects" />
		<meta name="keywords" content="slideshow, images, layout, asymmetric, css, html, javascript, template" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="favicon.ico">
		<link href="https://fonts.googleapis.com/css?family=Gochi+Hand" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="css1/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css1/demo.css" />
		<link rel="stylesheet" type="text/css" href="css1/slideshow.css" />
		<link rel="stylesheet" type="text/css" href="css1/slideshow_layouts.css" />
		<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  		<style>
			.ie-message { display: inline-block; }
  		</style>
		<![endif]-->
		<script>document.documentElement.className = 'js';</script>
	</head>
	<body>
		<svg class="hidden">
			<defs>
				<symbol id="icon-arrow" viewBox="0 0 24 24">
					<title>arrow</title>
					<polygon points="6.3,12.8 20.9,12.8 20.9,11.2 6.3,11.2 10.2,7.2 9,6 3.1,12 9,18 10.2,16.8 "/>
				</symbol>
				<symbol id="icon-drop" viewBox="0 0 24 24">
					<title>drop</title>
					<path d="M12,21c-3.6,0-6.6-3-6.6-6.6C5.4,11,10.8,4,11.4,3.2C11.6,3.1,11.8,3,12,3s0.4,0.1,0.6,0.3c0.6,0.8,6.1,7.8,6.1,11.2C18.6,18.1,15.6,21,12,21zM12,4.8c-1.8,2.4-5.2,7.4-5.2,9.6c0,2.9,2.3,5.2,5.2,5.2s5.2-2.3,5.2-5.2C17.2,12.2,13.8,7.3,12,4.8z"/><path d="M12,18.2c-0.4,0-0.7-0.3-0.7-0.7s0.3-0.7,0.7-0.7c1.3,0,2.4-1.1,2.4-2.4c0-0.4,0.3-0.7,0.7-0.7c0.4,0,0.7,0.3,0.7,0.7C15.8,16.5,14.1,18.2,12,18.2z"/>
				</symbol>
				<symbol id="icon-prev" viewBox="0 0 100 50">
					<title>prev</title>
					<polygon points="5.4,25 18.7,38.2 22.6,34.2 16.2,27.8 94.6,27.8 94.6,22.2 16.2,22.2 22.6,15.8 18.7,11.8"/>
				</symbol>
				<symbol id="icon-next" viewBox="0 0 100 50">
					<title>next</title>
					<polygon points="81.3,11.8 77.4,15.8 83.8,22.2 5.4,22.2 5.4,27.8 83.8,27.8 77.4,34.2 81.3,38.2 94.6,25 "/>
				</symbol>
				<symbol id="icon-octicon" viewBox="0 0 24 24">
					<title>octicon</title>
					<path d="M12,2.2C6.4,2.2,1.9,6.7,1.9,12.2c0,4.4,2.9,8.2,6.9,9.6c0.5,0.1,0.7-0.2,0.7-0.5c0-0.2,0-0.9,0-1.7c-2.8,0.6-3.4-1.4-3.4-1.4C5.6,17.1,5,16.8,5,16.8C4.1,16.2,5,16.2,5,16.2c1,0.1,1.5,1,1.5,1c0.9,1.5,2.4,1.1,2.9,0.8c0.1-0.7,0.4-1.1,0.6-1.3c-2.2-0.3-4.6-1.1-4.6-5c0-1.1,0.4-2,1-2.7C6.5,8.8,6.2,7.7,6.7,6.4c0,0,0.8-0.3,2.8,1C10.3,7.2,11.1,7.1,12,7c0.9,0,1.7,0.1,2.5,0.3c1.9-1.3,2.8-1,2.8-1c0.5,1.4,0.2,2.4,0.1,2.7c0.6,0.7,1,1.6,1,2.7c0,3.9-2.4,4.7-4.6,5c0.4,0.3,0.7,0.9,0.7,1.9c0,1.3,0,2.4,0,2.8c0,0.3,0.2,0.6,0.7,0.5c4-1.3,6.9-5.1,6.9-9.6C22.1,6.7,17.6,2.2,12,2.2z" />
				</symbol>
				<!-- From Karen Menezes: https://www.smashingmagazine.com/2015/05/creating-responsive-shapes-with-clip-path/ -->
				<clipPath id="polygon-clip-rhomboid" clipPathUnits="objectBoundingBox">
					<polygon points="0 1, 0.3 0, 1 0, 0.7 1" />
				</clipPath>
			</defs>
		</svg>
		<main>
			<header class="codrops-header">
				<div class="codrops-links">
					<a class="codrops-icon codrops-icon--prev" href="http://tympanus.net/Development/AboveBeneath/" title="Previous Demo"><svg class="icon icon--arrow"><use xlink:href="#icon-arrow"></use></svg></a>
					<a class="codrops-icon codrops-icon--drop" href="http://tympanus.net/codrops/?p=27363" title="Back to the article"><svg class="icon icon--drop"><use xlink:href="#icon-drop"></use></svg></a>
				</div>
				<h1 class="codrops-header__title">Multi-Layout Slideshow</h1>
				<p class="codrops-header__tagline">A decorative slideshow with a different layout for each slide</p>
				<p class="ie-message">Please note that your browser does not support the <a href="http://caniuse.com/#search=clip-path">CSS clip-path property</a>.</p>
				<nav class="dummy-links">
					<a class="dummy-links__link dummy-links__link--current" href="#">Home</a>
					<a class="dummy-links__link" href="#">Stories</a>
					<a class="dummy-links__link" href="#">Contact</a>
				</nav>
				<a href="https://github.com/codrops/MultiLayoutSlideshow/" class="btn btn--github"><svg class="icon icon--octicon"><use xlink:href="#icon-octicon"></use></svg></a>
			</header>
			<div class="slideshow" tabindex="0">
				<div class="slide slide--layout-1" data-layout="layout1">
					<div class="slide-imgwrap">
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/1.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/2.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/3.jpg);"></div></div>
					</div>
					<div class="slide__title">
						<h3 class="slide__title-main">Now or Never</h3>
						<p class="slide__title-sub">Our battered suitcases were piled on the sidewalk again; we had longer ways to go. But no matter, the road is life. <a href="#">Read more</a></p>
					</div>
				</div><!-- /slide -->
				<div class="slide slide--layout-4" data-layout="layout4">
					<div class="slide-imgwrap">
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/10.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/8.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/11.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/13.jpg);"></div></div>
					</div>
					<div class="slide__title">
						<h3 class="slide__title-main">Our Freedom</h3>
						<p class="slide__title-sub">For to be free is not merely to cast off one's chains, but to live in a way that respects and enhances the freedom of others.</p>
					</div>
				</div><!-- /slide -->
				<div class="slide slide--layout-5" data-layout="layout5">
					<div class="slide-imgwrap">
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/small/1.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/small/2.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/small/3.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/small/4.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/small/5.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/small/6.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/small/7.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/small/8.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/small/9.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/small/10.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/small/11.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/small/12.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/small/13.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/small/14.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/small/15.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/small/16.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/small/17.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/small/18.jpg);"></div></div>
					</div>
					<div class="slide__title">
						<h3 class="slide__title-main">Stopping Time</h3>
						<p class="slide__title-sub">Emancipate yourselves from mental slavery, none but ourselves can free our minds.</p>
					</div>
				</div><!-- /slide -->
				<div class="slide slide--layout-6" data-layout="layout6">
					<div class="slide-imgwrap">
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/14.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/11.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/3.jpg);"></div></div>
					</div>
					<div class="slide__title">
						<h3 class="slide__title-main">Walk the Walk</h3>
						<p class="slide__title-sub">The trouble with being in the rat race is that even if you win, you're still a rat.</p>
					</div>
				</div><!-- /slide -->
				<div class="slide slide--layout-7" data-layout="layout7">
					<div class="slide-imgwrap">
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/16.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/1.jpg);"></div></div>
						<div class="slide__img"><div class="slide__img-inner" style="background-image: url(img1/4.jpg);"></div></div>
					</div>
					<div class="slide__title">
						<h3 class="slide__title-main">Caged Birds</h3>
						<p class="slide__title-sub">They told me to grow roots, instead I grew wings. Birds born in a cage think flying is an illness. </p>
					</div>
				</div><!-- /slide -->
				<nav class="slideshow__nav slideshow__nav--arrows">
					<button id="prev-slide" class="btn btn--arrow" aria-label="Previous slide"><svg class="icon icon--prev"><use xlink:href="#icon-prev"></use></svg></button>
					<button id="next-slide" class="btn btn--arrow" aria-label="Next slide"><svg class="icon icon--next"><use xlink:href="#icon-next"></use></svg></button>
				</nav>
			</div><!-- /slideshow -->
			<div class="content content--text">
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
				cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
				proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
				cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
				proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
				cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
				proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
			</div>
			<!-- Related demos -->
			<section class="content content--related">
				<p>If you enjoyed this demo you might also like:</p>
				<a class="media-item" href="http://tympanus.net/Development/ImageGridEffects/">
					<img class="media-item__img" src="img1/related/ImageGridEffects.jpg">
					<h3 class="media-item__title">Image Grid Effects</h3>
				</a>
				<a class="media-item" href="http://tympanus.net/Tutorials/PolaroidStackGrid/">
					<img class="media-item__img" src="img1/related/PolaroidGrid.jpg">
					<h3 class="media-item__title">Polaroid Grid Animation</h3>
				</a>
			</section>
		</main>
		<script src="js1/imagesloaded.pkgd.min.js"></script>
		<script src="js1/anime.min.js"></script>
		<script src="js1/main.js"></script>
		<script>
		(function() {
			var slideshow = new MLSlideshow(document.querySelector('.slideshow'));

			document.querySelector('#next-slide').addEventListener('click', function() {
				slideshow.next();
			});

			document.querySelector('#prev-slide').addEventListener('click', function() {
				slideshow.prev();
			});
		})();
		</script>
	</body>
</html>