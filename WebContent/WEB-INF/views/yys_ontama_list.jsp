<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>阴阳师魂十模拟</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- All css -->
<link href="${pageContext.request.contextPath}/static/css/bootstrap.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/normalize.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/wave/wave_demo.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/wave/menu_wave.css" />
<script
	src="${pageContext.request.contextPath}/static/js/waves/snap.svg-min.js"></script>


<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/custom.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/ontama.css" />
<!-- button -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
<link
	href="${pageContext.request.contextPath}/static/css/button/button.css"
	rel="stylesheet" />


</head>
<body>

	<!-- nav bar start -->
	<div class="menu-wrap">
		<nav class="menu">
			<div class="icon-list">
				<a href="#"><span>模拟抽卡</span></a> <a
					href="${pageContext.request.contextPath}/yysvoice"><span>式神台词语音</span></a>
				<a href="${pageContext.request.contextPath}/yysontama"><span>御魂模拟器</span></a>
				<a href="${pageContext.request.contextPath }/about"><span>关于</span></a>
			</div>
		</nav>
		<button class="close-button" id="close-button">Close Menu</button>
		<div class="morph-shape" id="morph-shape"
			data-morph-open="M0,100h1000V0c0,0-136.938,0-224,0C583,0,610.924,0,498,0C387,0,395,0,249,0C118,0,0,0,0,0V100z">
			<svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%"
				viewBox="0 0 1000 100" preserveAspectRatio="none">
            <path
					d="M0,100h1000l0,0c0,0-136.938,0-224,0c-193,0-170.235-1.256-278-35C399,34,395,0,249,0C118,0,0,100,0,100L0,100z" />
        </svg>
		</div>
	</div>
	<!-- nav bar end -->
	<!-- menu button start -->
	<button class="menu-button" id="open-button">导航</button>
	<!-- menu button end -->

	<!-- content start. If the html doesn't have this content-wrap class, menu will not disappear when we
click the blank! -->
	<div class="content-wrap">
		<div class="col-md-12">
			<div class="header">
				<div class="btn-home col-lg-offset-9 col-md-1"
					onclick="window.location.href='${pageContext.request.contextPath}'">
					回到主页</div>
				|
				<div class="btn-qrcode"></div>
			</div>

			<div class="mainBox">
				<div class="col-md-2">
					<div class="ontama-menu-tips" id="dateTips"></div>

					<div class="ontama-menu-title">御魂模拟器</div>

					<section class="box">
						<article>
							<a
								href='${pageContext.request.contextPath }/yysontamas/someProduction'
								class='ui-box bottom-inOutSpread'>刷魂十了 </a>
						</article>
						<article>
							<a href='#' class='ui-box bottom-inOutSpread'>已收录御魂 </a>
						</article>
						<article>
							<a href='#' class='ui-box bottom-inOutSpread'>强化记录 </a>
						</article>
					</section>

				</div>

				<div class="col-md-6">
					<div class="ontama-all-title">御魂掉落</div>
					<div class="ontama-all-main">
						<c:if test="${not empty ontamaProduction }">
							<c:forEach items="${ontamaProduction}" var="p" varStatus="status"
								begin="0">
								<c:if test="${p.ontamaStarEn == 'FOUR'}">
									<div class="purpleOntamas shining-four" onClick="handle(this)"
										id="${p.ontamaId}">
										<div class="title">${p.ontamaStarZh}</div>
										<div class="title">${p.ontamaTypeZh}</div>
										<div class="title">${p.position}</div>
									</div>
								</c:if>

								<c:if test="${p.ontamaStarEn == 'FIVE'}">
									<div class="yellowOntamas shining-five" onClick="handle(this)"
										id="${p.ontamaId}">
										<div class="title">${p.ontamaStarZh}</div>
										<div class="title">${p.ontamaTypeZh}</div>
										<div class="title">${p.position}</div>
									</div>
								</c:if>

								<c:if test="${p.ontamaStarEn == 'SIX'}">
									<div class="yellowOntamas-six shining-six"
										onClick="handle(this)" id="${p.ontamaId}">
										<div class="title">${p.ontamaStarZh}</div>
										<div class="title">${p.ontamaTypeZh}</div>
										<div class="title">${p.position}</div>
									</div>
								</c:if>

							</c:forEach>
						</c:if>
						<c:if test="${empty ontamaProduction }">
							<div class="ontama-all-title" style="margin-top: 100px">还没有点击刷魂十呢！</div>
							<p></p>
						</c:if>

					</div>
				</div>

				<div class="col-md-4">
					<div class="ontama-attr">


						<div class="ontama-attr-title">御魂属性</div>

						<div class="ontama-attr-main">
							<div class="left-attr">
								<div class="text-l">
									<span id="attr1"></span>
									<p></p>
									<span id="attr2"></span>
									<p></p>
									<span id="attr3"></span>
									<p></p>
									<span id="attr4"></span>
									<p></p>
									<span id="attr5"></span>
									<p></p>
								</div>

							</div>
							<div class="right-attr">
								<div class="text-r">
									<span id="attrNum1"></span>
									<p></p>
									<span id="attrNum2"></span>
									<p></p>
									<span id="attrNum3"></span>
									<p></p>
									<span id="attrNum4"></span>
									<p></p>
									<span id="attrNum5"></span>
									<p></p>
								</div>
							</div>
							<div class="attrs">
								<span id="twoEffect"></span>
								<p></p>
								<span id="fourEffect"></span>
								<p></p>
							</div>
						</div>
					</div>
				</div>


			</div>

			<div class="footer">
				© Liysuzy | <a href="mailto:Li1121899707@163.com"
					style="color: #ac9768"><i>Li1121899707@163.com</i></a> | since 2018
				| <a href="${pageContext.request.contextPath}/yysabout" style="color: #ac9768">本网站仅用于个人交流！网站资源版权归网易所有！</a>
			</div>
		</div>
	</div>
	<!-- /content-wrap -->
	<!-- content end -->

	<!-- jQuery & js -->
	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/js/waves/classie.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/js/waves/main3.js"></script>
	<script>
		function handle(element) {
			//获取了div的id
			<c:forEach items="${ontamaProduction}" var="p">
			if (element.id == "${p.ontamaId}") {
				if ("${p.attr1}" != null)
					document.getElementById('attr1').innerText = "${p.attr1}";
				else
					document.getElementById('attr1').innerText = "";
				if ("${p.attr2}" != null)
					document.getElementById('attr2').innerText = "${p.attr2}";
				else
					document.getElementById('attr2').innerText = "";
				if ("${p.attr3}" != null)
					document.getElementById('attr3').innerText = "${p.attr3}";
				else
					document.getElementById('attr3').innerText = "";
				if ("${p.attr4}" != null)
					document.getElementById('attr4').innerText = "${p.attr4}";
				else
					document.getElementById('attr4').innerText = "";
				if ("${p.attr5}" != null)
					document.getElementById('attr5').innerText = "${p.attr5}";
				else
					document.getElementById('attr5').innerText = "";
				if ("${p.attrNum1}" != 0)
					document.getElementById('attrNum1').innerText = format("${p.attrNum1}");
				else
					document.getElementById('attrNum1').innerText = "";
				if ("${p.attrNum2}" != 0)
					document.getElementById('attrNum2').innerText = format("${p.attrNum2}");
				else
					document.getElementById('attrNum2').innerText = "";
				if ("${p.attrNum3}" != 0)
					document.getElementById('attrNum3').innerText = format("${p.attrNum3}");
				else
					document.getElementById('attrNum3').innerText = "";
				if ("${p.attrNum4}" != 0)
					document.getElementById('attrNum4').innerText = format("${p.attrNum4}");
				else
					document.getElementById('attrNum4').innerText = "";
				if ("${p.attrNum5}" != 0)
					document.getElementById('attrNum5').innerText = format("${p.attrNum5}");
				else
					document.getElementById('attrNum5').innerText = "";
				if ("${p.twoEffect}" != 0)
					document.getElementById('twoEffect').innerText = "二件套属性："
							+ "${p.twoEffect}";
				if ("${p.fourEffect}" != null)
					document.getElementById('fourEffect').innerText = "四件套属性："
							+ "${p.fourEffect}";
			}
			</c:forEach>
		}

		function format(str) {
			var num = parseFloat(str);
			if (num > 1) {
				return "+" + num.toFixed();
				num.toFixed();
			} else {
				var result = Number(num * 100).toFixed();
				result = "+" + result + "%"
				return result;
			}
		}
	</script>

	<script>
		window.onload = function() {
			var week = new Date().getDay();
			if (week == 1) {
				document.getElementById("dateTips").innerHTML = "今天是周一，可以刷出<br>雪幽魂<br>鸣屋<br>地藏<br>网切";
			} else if (week == 2) {
				document.getElementById("dateTips").innerHTML = "今天是周二，可以刷出<br>涅槃之火<br>三味<br>招财猫<br>狰";
			} else if (week == 3) {
				document.getElementById("dateTips").innerHTML = "今天是周三，可以刷出<br>魍魉之匣<br>被服<br>阴摩罗<br>魅妖";
			} else if (week == 4) {
				document.getElementById("dateTips").innerHTML = "今天是周四，可以刷出<br>反枕<br>心眼<br>树妖<br>针女";
			} else if (week == 5) {
				document.getElementById("dateTips").innerHTML = "今天是周五，可以刷出<br><br>日女巳时<br>镜姬<br>钟灵<br>破势";
			} else if (week == 6 || week == 0) {
				document.getElementById("dateTips").innerHTML = "今天是周末，可以刷出<br>魂十的所有御魂<br>特别是蚌精和火灵哦！";
			}
		}
	</script>
</body>
</html>
