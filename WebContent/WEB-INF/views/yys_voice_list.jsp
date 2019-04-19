<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>阴阳师式神语音</title>
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
	href="${pageContext.request.contextPath}/static/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/custom.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/voice.css" />

<!-- button -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
<link
	href="${pageContext.request.contextPath}/static/css/button/button.css"
	rel="stylesheet" />

<link
	href="${pageContext.request.contextPath}/static/css/button/select2.css"
	rel="stylesheet">

</head>
<body>

	<!-- nav bar start -->
	<div class="menu-wrap">
		<nav class="menu">
			<div class="icon-list">
            <a href="#"><span>模拟抽卡</span></a>
            <a href="${pageContext.request.contextPath}/yysvoice"><span>式神台词语音</span></a>
            <a href="${pageContext.request.contextPath}/yysontama"><span>御魂模拟器</span></a>
            <a href="${pageContext.request.contextPath }/about"><span>关于</span></a>
        </div>
		</nav>
		<button class="close-button" id="close-button">导航</button>
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
					onclick="window.location.href='${pageContext.request.contextPath}'">回到主页</div>
				|
				<div class="btn-qrcode"></div>
			</div>
			<div class="mainBox">
				<div class="col-md-2">
					<div class="voice-select ">
						<select
							class="form-control select select-primary select-block mbl"
							id="shishen">
						</select>
						<!-- 搜索框 结束 -->
					</div>

					<section class="box">
						<article>
							<a href='javascript:void(0);' onclick="dianjiTransport()"
								class='ui-box bottom-inOutSpread'>点击 </a>
						</article>
						<article>
							<a href='javascript:void(0);' onclick="chuchangTransport()"
								class='ui-box bottom-inOutSpread'>出场 </a>
						</article>
						<article>
							<a href='javascript:void(0);' onclick="shoujiTransport()"
								class='ui-box bottom-inOutSpread'>受击 </a>
						</article>
						<article>
							<a href='javascript:void(0);' onclick="siwangTransport()"
								class='ui-box bottom-inOutSpread'>死亡 </a>
						</article>
						<article>
							<a href='javascript:void(0);' onclick="jineng1Transport()"
								class='ui-box bottom-inOutSpread'>技能1 </a>
						</article>
						<article>
							<a href='javascript:void(0);' onclick="jineng2Transport()"
								class='ui-box bottom-inOutSpread'>技能2 </a>
						</article>
						<article>
							<a href='javascript:void(0);' onclick="jineng3Transport()"
								class='ui-box bottom-inOutSpread'>技能3 </a>
						</article>
					</section>

					<div class="voice-page">

						<c:forEach begin="1" end="${pageUtil.pageCount}" var="i">
							<c:choose>
								<c:when test="${pageUtil.pageIndex+1==i }">
									<div class="a">
										<a
											href="${pageContext.request.contextPath }/yysvoices/${pageUtil.list[0].shiId}/${pageUtil.list[0].vtType}/list?pageIndex=${i-1}"
											style="text-decoration: none;">${i}</a>
									</div>

								</c:when>
								<c:otherwise>
									<div class="a">
										<a
											href="${pageContext.request.contextPath }/yysvoices/${pageUtil.list[0].shiId}/${pageUtil.list[0].vtType}/list?pageIndex=${i-1}"
											style="text-decoration: none;">${i}</a>
									</div>
								</c:otherwise>
							</c:choose>
						</c:forEach>

					</div>
				</div>
				<c:if test="${not empty pageUtil.list }">
					<c:forEach items="${pageUtil.list }" var="sr" varStatus="status"
						begin="0" end="1">
						<div class="col-md-4">
							<div class="voice-main">

								<div class="title">阴阳师式神语音</div>

								<div class="text">
									稀有度：${sr.rareName}
									<p></p>
									日文名：${sr.shiJp}
									<p></p>
									英文名：${sr.shiEn}
									<P></P>
									声优：${sr.cvNameZh}
								
									<p></p>
									当前技能：${sr.vtName}
									<p></p>
									觉醒：
									<c:if test="${sr.vtAwake==1 }">觉醒前</c:if>
									<c:if test="${sr.vtAwake==2 }">觉醒后</c:if>
									<p></p>
									技能版本：版本${pageUtil.pageIndex + 1}
									<p></p>
									<c:choose>
										<c:when test="${sr.voiceDoc!=null}">
						播放音频：<img onclick="playMusic()" style="cursor: pointer"
												src="${pageContext.request.contextPath}/static/img/music-32.png" />

										</c:when>
										<c:otherwise>
												音频暂时缺失
											</c:otherwise>
									</c:choose>


									<c:choose>
										<c:when test="${sr.voiceDoc!=null}">
											<audio id="musicAudio"
												src="${pageContext.request.contextPath}/static/res/music/${sr.voiceDoc}"></audio>
										</c:when>
										<c:otherwise>
											<audio id="musicAudio" src=""></audio>
										</c:otherwise>
									</c:choose>
								</div>


								<c:choose>
									<c:when test="${not empty pageUtil.list }">
										<div class="voice-tip-2">
											${pageUtil.list[0].vtName}共 ${pageUtil.pageCount} 个版本,请在左侧选择</div>

										<div class="voice-tip">右侧为式神语音日文、中文、罗马音。</div>

									</c:when>
									<c:otherwise>
										<div class="voice-tip-2">
											<strong>该技能没有语音</strong>
										</div>
									</c:otherwise>
								</c:choose>
							</div>
						</div>

						<div class="col-md-6">
							<div class="voice-nation">
								<div class="title">${sr.shiZh}</div>
								<div class="voice-jp">${sr.voiceJp}</div>
								<div class="voice-zh">${sr.voiceZh}</div>
								<div class="voice-ro">${sr.voiceRo}</div>
							</div>
						</div>
			</div>
			</c:forEach>
			</c:if>

			<c:if test="${empty pageUtil.list }">
				<div class="col-md-4">
					<div class="voice-main">
						<div class="title">阴阳师式神语音</div>
						<div class="text" style="margin-top:100px; font-size:24px; text-align:center;">还没选择式神呢
						</div>
						<div class="text" style="font-size:20px;text-align:center;">(*≧︶≦))(￣▽￣* )ゞ</div>
					</div>

				</div>
				<div class="col-md-6">
					<div class="voice-nation">
						<div class="title">式神录</div>
						<div class="voice-jp">日文</div>
						<div class="voice-zh">中文</div>
						<div class="voice-ro">罗马音</div>
					</div>
				</div>
			</c:if>



		</div>
		<div class="footer">
			© Liysuzy | <a href="mailto:Li1121899707@163.com"
				style="color: #ac9768"><i>Li1121899707@163.com</i></a> | since 2018
			| <a href="${pageContext.request.contextPath}/yysabout" style="color: #ac9768">本网站仅用于个人交流！网站资源版权归网易所有！</a>
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
	<script src="${pageContext.request.contextPath}/static/js/select2.js"></script>


	<script>
		$("select").select2({
			dropdownCssClass : 'dropdown-inverse'
		});
	</script>

	<script>
		function dianjiTransport() {
			var v = document.getElementById("shishen").value;
			var str = '${pageContext.request.contextPath}' + "/yysvoices/" + v
					+ "/dianji" + "/list";
			window.location.href = str;
		}

		function chuchangTransport() {
			var v = document.getElementById("shishen").value;
			var str = '${pageContext.request.contextPath}' + "/yysvoices/" + v
					+ "/chuchang" + "/list";
			window.location.href = str;
		}

		function shoujiTransport() {
			var v = document.getElementById("shishen").value;
			var str = '${pageContext.request.contextPath}' + "/yysvoices/" + v
					+ "/shouji" + "/list";
			window.location.href = str;
		}

		function siwangTransport() {
			var v = document.getElementById("shishen").value;
			var str = '${pageContext.request.contextPath}' + "/yysvoices/" + v
					+ "/siwang" + "/list";
			window.location.href = str;
		}

		function jineng1Transport() {
			var v = document.getElementById("shishen").value;
			var str = '${pageContext.request.contextPath}' + "/yysvoices/" + v
					+ "/jineng1" + "/list";
			window.location.href = str;
		}

		function jineng2Transport() {
			var v = document.getElementById("shishen").value;
			var str = '${pageContext.request.contextPath}' + "/yysvoices/" + v
					+ "/jineng2" + "/list";
			window.location.href = str;
		}

		function jineng3Transport() {
			var v = document.getElementById("shishen").value;
			var str = '${pageContext.request.contextPath}' + "/yysvoices/" + v
					+ "/jineng3" + "/list";
			window.location.href = str;
		}
	</script>

	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$
									.ajax({
										type : "post",
										url : '${pageContext.request.contextPath}/yysvoices/getShiShenJson',
										dataType : 'json',
										data : {},
										success : function(data) {
											/* alert(JSON.stringify(data)); */
											var groupSP = $("<optgroup label='SP'></optgroup>");
											var groupSSR = $("<optgroup label='SSR'></optgroup>");
											var groupSSSR = $("<optgroup label='SSR绝版限定'></optgroup>");
											var groupSR = $("<optgroup label='SR'></optgroup>");
											var groupR = $("<optgroup label='R'></optgroup>");
											var groupN = $("<optgroup label='N'></optgroup>");
											var groupSSN = $("<optgroup label='呱'></optgroup>");
											for ( var i in data) {
												var option = $("<option value='"+data[i].shiId+"'>"
														+ data[i].shiZh
														+ "</option>");
												/* alert(data[i].rareId); */
												if (data[i].rareId == 1) {
													groupSSR.append(option);
												} else if (data[i].rareId == 2) {
													groupSR.append(option);
												} else if (data[i].rareId == 3) {
													groupR.append(option);
												} else if (data[i].rareId == 4) {
													groupN.append(option);
												} else if (data[i].rareId == 5) {
													groupSSN.append(option);
												} else if (data[i].rareId == 6) {
													groupSP.append(option);
												} else if (data[i].rareId == 7) {
													groupSSSR.append(option);
												}

											}
											$("#shishen")
													.prepend(
															"<option value='0'>请选择</option>");
											$("#shishen").append(groupSP);
											$("#shishen").append(groupSSSR);
											$("#shishen").append(groupSSR);
											$("#shishen").append(groupSR);
											$("#shishen").append(groupR);
											$("#shishen").append(groupN);
											$("#shishen").append(groupSSN);

											var shiid = '${pageUtil.list[0].shiId}';

											if (shiid) {
												$("#shishen").val(shiid)
														.select2();
											} else {
												var shiidlistnull = '${shiidlistnull}';
												if (shiidlistnull) {
													$("#shishen").val(
															shiidlistnull)
															.select2();
												}
											}

										},
										error : function() {
											alert('error');
										}
									});
						})
	</script>
	<script>
		function playMusic() {
			var player = document.getElementById('musicAudio');
			player.play();
		}
	</script>

</body>
</html>
