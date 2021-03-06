<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>阴阳师魂十模拟</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- All css -->
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.css" rel="stylesheet">
    <!-- menu wave css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/normalize.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/wave/wave_demo.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/wave/menu_wave.css"/>
    <!-- bootstrap & own -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/custom.css"/>
    <script src="${pageContext.request.contextPath}/static/js/waves/snap.svg-min.js"></script>
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
        <!-- header start -->
        <div class="header">
            <div class="btn-home col-lg-offset-9 col-md-1" onclick="window.location.href='${pageContext.request.contextPath}'">
                回到主页
            </div>
            |
            <div class="btn-qrcode">
            </div>
        </div>
        <!-- header end -->

        <!-- content start -->
        <div class="mainBox">
            <div class="col-md-6 col-md-offset-3">
                <div class="about">
                    <div class="aboutTitle">
                        关于
                    </div>
                    本网站为个人学习与交流所用！<br>

                    运营与维护均与网易公司无关！<br><br>

                    网站界面设计思路与网站背景图片资源源自 <strong style="font-size: 24px">阴阳师试听站</strong><br>

                    <a target="_blank"
                       href="http://yys.163.com/media/video.html">http://yys.163.com/media/video.html</a><br>
                    网站资源（如式神语音、御魂设计等）均取材自阴阳师手游<br>

                    <strong style="font-size: 30px">以上版权均归网易所有</strong><br><br>

                    <strong>界面如有侵权，请联系开发者，开发者会重新设计界面。</strong><br>
                    （不过开发者还是十分喜欢和佩服阴阳师视听站的设计的，<br>作为学习才仿作一个。）<br><br>

                    式神台词翻译（中文、罗马音）<strong>转载</strong>自 <strong style="font-size: 24px">NGA阴阳师论坛</strong><br>

                    <a target="_blank" href="https://bbs.nga.cn/read.php?tid=10070310">https://bbs.nga.cn/read.php?tid=10070310</a><br>

                    式神语音为开发者从阴阳师手游录制剪辑。未经过解包等操作。<br>

                    如有侵权请联系<a href="mailto:Li1121899707@163.com">Li1121899707@163.com</a><br><br>

                    开发者：LiySuzy<br>

                    版本：V1.0<br><br><br><br>

                    <div class="aboutTitle">
                        更新公告
                    </div>
                   
                    <div class="updateTitle">
                        2018.09.20
                    </div>
                    <div class="update">
                        <strong>全新界面迭代！</strong><br>
                        更新了所有页面，优化了页面的跳转，页面跳转变得更加便捷。<br>
                        采用了<strong>阴阳师视听站</strong>的设计（<strong>如有侵权，请联系开发者，开发者会回退到过去的版本</strong>）<br>

                    </div>
                    <div class="updateTitle">
                        2018.09.15
                    </div>
                    <div class="update">
                        <strong>魂十模拟器 V1.0 正式上线！</strong><br>
                        增加功能：魂十模拟——仿真爆率，可以一次性刷多个御魂，并且可以查看每个御魂的属性。
                    </div>
                    <div class="updateTitle">
                        2018.09.13
                    </div>
                    <div class="update">
                        <strong>御魂模拟器Demo</strong><br>
                        主要功能：可以刷一个御魂，并且可以查看御魂的属性。属性为模拟魂十随机生成。
                    </div>
                    <div class="updateTitle">
                        2018.09.10
                    </div>
                    <div class="update">
                        <strong>阴阳师式神语音 V1.0 正式上线！</strong><br>
                        主要功能：阴阳师式神语音的查询，可以查看式神台词的日文、中文、罗马音。可以查看每个式神的名称、声优等信息。
                    </div>
                </div>
            </div>
            <div class="cloud-l"></div>
            <div class="cloud-r"></div>
        </div>
        <!-- content end -->

        <!-- footer start -->
        <div class="footer">
            © Liysuzy | <a href="mailto:Li1121899707@163.com" style="color: #ac9768">Li1121899707@163.com</a> | since
            2018 | <a href="${pageContext.request.contextPath}/yysabout" style="color: #ac9768">本网站仅用于个人交流！网站资源版权归网易所有！</a>
        </div>
        <!-- footer end -->
    </div>
</div><!-- /content-wrap -->
<!-- content end -->

<!-- jQuery & js -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/waves/classie.js"></script>
<script src="${pageContext.request.contextPath}/static/js/waves/main3.js"></script>

</body>
</html>
