<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><!-- 导入核心标签库 -->

<!doctype html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>LiySuzy 首页</title>
<meta name="description" content="这是首页">
<meta name="keywords" content="index">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png"
	href="${pageContext.request.contextPath}/static/i/favicon.png">
<link rel="apple-touch-icon-precomposed"
	href="${pageContext.request.contextPath}/static/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/amazeui.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/admin.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/app.css">
</head>

<body data-type="index">

	<!-- header 开始 -->
	<header class="am-topbar am-topbar-inverse admin-header">
		<!-- LOGO 开始 -->
		<div class="am-topbar-brand">
			<a href="javascript:;" class="tpl-logo"> <img
				src="${pageContext.request.contextPath}/static/img/logo.png" alt="">
			</a>
		</div>
		<!-- LOGO 结束 -->

		<!-- 导航切换 开始 -->
		<button
			class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
			data-am-collapse="{target: '#topbar-collapse'}">
			<span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span>
		</button>
		<!-- 导航切换 结束 -->

		<div class="am-collapse am-topbar-collapse" id="topbar-collapse">

			<ul
				class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list tpl-header-list">

				<li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
					<a class="am-dropdown-toggle tpl-header-list-link"
					href="javascript:;"> <span class="tpl-header-list-user-nick">Suzy</span><span
						class="tpl-header-list-user-ico"> <img
							src="${pageContext.request.contextPath}/static/img/user01.jpg"></span>
				</a>
					<ul class="am-dropdown-content">
						<li><a href="#"><span class="am-icon-bell-o"></span>&nbsp;资料</a></li>
						<li><a href="#"><span class="am-icon-cog"></span>&nbsp;设置</a></li>
						<li><a href="#"><span class="am-icon-power-off"></span>&nbsp;退出</a></li>
					</ul>
				</li>

			</ul>
		</div>
	</header>
	<!-- header 结束 -->

	<!-- am-cf admin-main start  -->
	<div class="am-cf admin-main">

		<!-- 侧边栏 开始 -->
		<div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
			<div class="am-offcanvas-bar admin-offcanvas-bar">
				<div class="tpl-left-nav-title">LiySuzy 列表</div>
				<div class="tpl-left-nav-list">
					<ul class="tpl-left-nav-menu">

						<!-- 第一行开始 -->
						<li class="tpl-left-nav-item "><a
							href="${pageContext.request.contextPath}/sidenav/admin_index"
							class="nav-link active"> <i class="am-icon-home"></i> <span>&nbsp;&nbsp;&nbsp;首页</span>
						</a></li>
						<!-- 第一行结束 -->

						<!-- 第二行开始 -->
						<li class="tpl-left-nav-item"><a href="javascript:;"
							class="nav-link tpl-left-nav-link-list"> <i
								class="am-icon-music"></i> <span>&nbsp;&nbsp;&nbsp;音乐</span> <i
								class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
						</a>

							<ul class="tpl-left-nav-sub-menu">
								<i> <a
									href="${pageContext.request.contextPath}/sidenav/music_manage">
										<i class="am-icon-angle-right"></i> <span>管理音乐</span> <i
										class="am-icon-edit tpl-left-nav-more-ico am-fr am-margin-right"></i>
								</a> <a href="${pageContext.request.contextPath}/sidenav/music_add">
										<i class="am-icon-angle-right"></i> <span>添加音乐</span> <i
										class="am-icon-pencil tpl-left-nav-more-ico am-fr am-margin-right"></i>
								</a> <a
									href="${pageContext.request.contextPath}/capriccio/list">
										<i class="am-icon-angle-right"></i> <span>管理随想</span> <i
										class="am-icon-edit tpl-left-nav-more-ico am-fr am-margin-right"></i>
								</a> <a href="${pageContext.request.contextPath}/sidenav/capriccio_add">
										<i class="am-icon-angle-right"></i> <span>添加随想</span> <i
										class="am-icon-pencil tpl-left-nav-more-ico am-fr am-margin-right"></i>
								</a>

								</i>
							</ul></li>
						<!-- 第二行结束 -->

						<!-- 第三行开始 -->
						<li class="tpl-left-nav-item"><a href="javascript:;"
							class="nav-link tpl-left-nav-link-list"> <i
								class="am-icon-facebook"></i> <span>&nbsp;&nbsp;&nbsp;阴阳师</span>
								<i
								class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
						</a>

							<ul class="tpl-left-nav-sub-menu">
								<i> <a href="${pageContext.request.contextPath}/onmyojiVoice/list"> <i class="am-icon-angle-right"></i> <span>管理语音</span>
										<i
										class="am-icon-edit tpl-left-nav-more-ico am-fr am-margin-right"></i>
								</a> <a href="#"> <i class="am-icon-angle-right"></i> <span>添加语音</span>
										<i
										class="am-icon-pencil tpl-left-nav-more-ico am-fr am-margin-right"></i>
								</a>
								</i>
							</ul></li>
						<!-- 第三行结束 -->

						<!-- 第四行开始 -->
						<li class="tpl-left-nav-item"><a href="javascript:;"
							class="nav-link tpl-left-nav-link-list"> <i
								class="am-icon-globe"></i> <span>&nbsp;&nbsp;&nbsp;网站</span> <i
								class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
						</a>

							<ul class="tpl-left-nav-sub-menu">
								<i> <a href="#"> <i class="am-icon-angle-right"></i> <span>管理网站</span>
										<i
										class="am-icon-edit tpl-left-nav-more-ico am-fr am-margin-right"></i>
								</a> <a href="#"> <i class="am-icon-angle-right"></i> <span>添加网站</span>
										<i
										class="am-icon-pencil tpl-left-nav-more-ico am-fr am-margin-right"></i>
								</a>
								</i>
							</ul></li>
						<!-- 第四行结束 -->

						<!-- 第五行开始 -->
						<li class="tpl-left-nav-item"><a href="javascript:;"
							class="nav-link tpl-left-nav-link-list"> <i
								class="am-icon-wechat"></i> <span>&nbsp;&nbsp;&nbsp;琐事</span> <i
								class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
						</a>

							<ul class="tpl-left-nav-sub-menu">
								<i> <a href="#"> <i class="am-icon-angle-right"></i> <span>管理琐事</span>
										<i
										class="am-icon-edit tpl-left-nav-more-ico am-fr am-margin-right"></i>
								</a> <a href="#"> <i class="am-icon-angle-right"></i> <span>添加琐事</span>
										<i
										class="am-icon-pencil tpl-left-nav-more-ico am-fr am-margin-right"></i>
								</a>
								</i>
							</ul></li>
						<!-- 第五行结束 -->
					</ul>
				</div>
			</div>
		</div>
		<!-- 侧边栏 结束 -->

		<!-- 首页内容开始 -->
		<!-- AMAZE UI  -->
		<!-- 内容 开始 -->
		<div class="admin-content">

			<!-- 内容 详细 开始 -->
			<div class="admin-content-body">

				<!-- 表单标题 开始 -->
				<div class="tpl-portlet-components">
					<div class="portlet-title">
						<div class="caption font-green bold">
							<span class="am-icon-home"></span>&nbsp; &nbsp; LiySuzy Admin 首页
						</div>

						<div class="tpl-portlet-input tpl-fz-ml">
							<ol class="am-breadcrumb">
								<li><a href="#" class="am-icon-home">首页</a></li>
								<li><a href="#">音乐</a></li>
								<li class="am-active">添加音乐</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- 表单标题 结束 -->

				<div class="tpl-content-scope">
					<div class="note note-info">
						<h3>
							LiySuzy 分享生活 <span class="close" data-close="note"></span>
						</h3>
						<p>LiySuzy Site , Share your life !</p>
						<p>
							<span class="label label-info">Share</span> <span
								class="am-badge am-badge-danger am-radius">Music</span> <span
								class="am-badge am-badge-warning am-radius">Blog</span> <span
								class="am-badge am-badge-primary am-radius">Website</span> <span
								class="am-badge am-badge-success am-radius">DailyLife</span>
						</p>
					</div>
				</div>

				<div class="row">
					<div class="am-u-lg-3 am-u-md-6 am-u-sm-12">
						<div class="dashboard-stat red">
							<div class="visual">
								<i class="am-icon-music"></i>
							</div>
							<div class="details">
								<div class="number">0</div>
								<div class="desc">音乐分享</div>
							</div>
							<a class="more" href="#"> 查看更多 <i
								class="m-icon-swapright m-icon-white"></i>
							</a>
						</div>
					</div>
					<div class="am-u-lg-3 am-u-md-6 am-u-sm-12">
						<div class="dashboard-stat blue">
							<div class="visual">
								<i class="am-icon-bar-chart-o"></i>
							</div>
							<div class="details">
								<div class="number">0</div>
								<div class="desc">博客分享</div>
							</div>
							<a class="more" href="#"> 查看更多 <i
								class="m-icon-swapright m-icon-white"></i>
							</a>
						</div>
					</div>
					<div class="am-u-lg-3 am-u-md-6 am-u-sm-12">
						<div class="dashboard-stat purple">
							<div class="visual">
								<i class="am-icon-globe"></i>
							</div>
							<div class="details">
								<div class="number">0</div>
								<div class="desc">网站分享</div>
							</div>
							<a class="more" href="#"> 查看更多 <i
								class="m-icon-swapright m-icon-white"></i>
							</a>
						</div>
					</div>
					<div class="am-u-lg-3 am-u-md-6 am-u-sm-12">
						<div class="dashboard-stat green">
							<div class="visual">
								<i class="am-icon-wechat"></i>
							</div>
							<div class="details">
								<div class="number">0</div>
								<div class="desc">琐事分享</div>
							</div>
							<a class="more" href="#"> 查看更多 <i
								class="m-icon-swapright m-icon-white"></i>
							</a>
						</div>
					</div>
				</div>

				<div class="am-g">
					<br>
					<br>
					<br>
					<br>
				</div>


			</div>
			<!-- 内容 详细 结束 -->

			<footer class="admin-content-footer am-center">
				<hr>
				<p class="am-padding-center">© 2018 LiySuzy
					li1121899707@gmail.com</p>
			</footer>

		</div>
		<!-- 内容 结束 -->
		<!-- 首页内容结束 -->

		<div class="am-modal am-modal-no-btn" tabindex="-1" id="your-modal">
			<div class="am-modal-dialog">
				<div class="am-modal-hd">
					Modal 标题 <a href="javascript: void(0)"
						class="am-close am-close-spin" data-am-modal-close>&times;</a>
				</div>
				<div class="am-modal-bd">Modal 内容。</div>
			</div>
		</div>

	</div>
	<!-- am-cf admin-main end  -->


	<a href="#"
		class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu"
		data-am-offcanvas="{target: '#admin-offcanvas'}"></a>

	<script
		src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/js/amazeui.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/iscroll.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/app.js"></script>


</body>

</html>