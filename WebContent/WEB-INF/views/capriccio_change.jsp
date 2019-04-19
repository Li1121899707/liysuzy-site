<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><!-- 导入核心标签库 -->

<!doctype html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Amaze UI Admin index Examples</title>
<meta name="description" content="这是一个 index 页面">
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

<body data-type="generalComponents">

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

				<li class="am-hide-sm-only"><a href="javascript:;"
					id="admin-fullscreen" class="tpl-header-list-link"> <span
						class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a>
				</li>

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


	<!-- 非header 部分 开始 -->
	<div class="am-cf admin-main">

		<!-- 侧边栏 开始 -->
		<div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
			<div class="am-offcanvas-bar admin-offcanvas-bar">
				<div class="tpl-left-nav-title">LiySuzy 列表</div>
				<div class="tpl-left-nav-list">
					<ul class="tpl-left-nav-menu">

						<!-- 第一行开始 -->
						<li class="tpl-left-nav-item"><a
							href="${pageContext.request.contextPath}/sidenav/admin_index"
							class="nav-link"> <i class="am-icon-home"></i> <span>&nbsp;&nbsp;&nbsp;首页</span>
						</a></li>
						<!-- 第一行结束 -->

						<!-- 第二行开始 -->
						<li class="tpl-left-nav-item"><a href="javascript:;"
							class="nav-link tpl-left-nav-link-list active"> <i
								class="am-icon-music"></i> <span>&nbsp;&nbsp;&nbsp;音乐</span> <i
								class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right
                                tpl-left-nav-more-ico-rotate"></i>
						</a>

							<ul class="tpl-left-nav-sub-menu" style="display: block">
								<i> <a
									href="${pageContext.request.contextPath}/sidenav/music_manage">
										<i class="am-icon-angle-right"></i> <span>管理音乐</span> <i
										class="am-icon-edit tpl-left-nav-more-ico am-fr am-margin-right"></i>
								</a> <a href="${pageContext.request.contextPath}/sidenav/music_add">
										<i class="am-icon-angle-right"></i> <span>添加音乐</span> <i
										class="am-icon-pencil tpl-left-nav-more-ico am-fr am-margin-right"></i>
								</a> <a
									href="${pageContext.request.contextPath}/sidenav/capriccio_manage"
									class="active"> <i class="am-icon-angle-right"></i> <span>管理随想</span>
										<i
										class="am-icon-edit tpl-left-nav-more-ico am-fr am-margin-right"></i>
								</a> <a
									href="${pageContext.request.contextPath}/sidenav/capriccio_add">
										<i class="am-icon-angle-right"></i> <span>添加随想</span> <i
										class="am-icon-pencil tpl-left-nav-more-ico am-fr am-margin-right"></i>
								</a>
								</i>
							</ul></li>
						<!-- 第二行结束 -->

						<!-- 第三行开始 -->
						<li class="tpl-left-nav-item"><a href="javascript:;"
							class="nav-link tpl-left-nav-link-list"> <i
								class="am-icon-facebook"></i> <span>&nbsp;&nbsp;&nbsp;博客</span>
								<i
								class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
						</a>

							<ul class="tpl-left-nav-sub-menu">
								<i> <a href="#"> <i class="am-icon-angle-right"></i> <span>管理博客</span>
										<i
										class="am-icon-edit tpl-left-nav-more-ico am-fr am-margin-right"></i>
								</a> <a href="#"> <i class="am-icon-angle-right"></i> <span>添加博客</span>
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

		<!-- 内容 开始 -->
		<div class="admin-content">
			<!-- 内容 详细 开始 -->
			<div class="admin-content-body">

				<!-- 表单标题 开始 -->
				<div class="tpl-portlet-components">
					<div class="portlet-title">
						<div class="caption font-green bold">
							<span class="am-icon-pencil-square"></span>&nbsp; &nbsp; 更改随想
						</div>

						<div class="tpl-portlet-input tpl-fz-ml">
							<ol class="am-breadcrumb">
								<li><a href="#" class="am-icon-home">首页</a></li>
								<li><a href="#">音乐</a></li>
								<li class="am-active">更改随想</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- 表单标题 结束 -->

				<!-- 提示 开始 -->
				<div class="tpl-content-scope">
					<div class="note note-info">
						<h3>
							WHAT IS CAPRICCIO <span class="close" data-close="note"></span>
						</h3>
						<p>
							Capriccio (music), a piece of music which is fairly free in form!
							<br> BUT <br> You can find more!
						</p>
					</div>
				</div>
				<!-- 提示 结束 -->

				<!-- 表单 开始 -->
				<div class="tpl-block ">
					<div class="am-g tpl-amazeui-form">

						<div class="am-u-sm-12 am-u-md-9">

							<!-- 表单开始 -->
							<form class="am-form am-form-horizontal"
								action="${pageContext.request.contextPath}/capriccio/${updateInfo.capId}/update?update"
								method="post">
								<!-- 随想音符 开始 -->
								<div class="am-form-group">
									<label for="musicName" class="am-u-sm-3 am-form-label">随想音符</label>
									<div class="am-u-sm-9">
										<input type="text" value="${updateInfo.capNote }"
											class="am-radius" id="musicName" name="capNote"
											placeholder="随想音符"  readonly="readonly" required>
									</div>
								</div>
								<!-- 随想音符 结束 -->

								<!-- 随想乐曲 开始 -->
								<div class="am-form-group">
									<label for="musicSinger" class="am-u-sm-3 am-form-label">随想乐曲</label>
									<div class="am-u-sm-9">
										<input type="text" value="${updateInfo.capMusic }"
											class="am-radius" id="musicSinger" name="capMusic"
											placeholder="填写随想对应的实际歌曲" required>
									</div>
								</div>
								<!-- 随想乐曲 结束 -->

								<!-- 链接 开始 -->
								<div class="am-form-group">
									<label for="musicAlbum" class="am-u-sm-3 am-form-label">网易云音乐链接</label>
									<div class="am-u-sm-9">
										<input type="url" value="${updateInfo.capLink }"
											class="am-radius" id="musicAlbum" name="capLink"
											placeholder="随想歌曲网易云音乐链接" required>
									</div>
								</div>
								<!-- 链接 结束 -->

								<!-- 喜爱 开始 -->
								<div class="am-form-group">
									<label for="musicAlbum" class="am-u-sm-3 am-form-label">喜爱</label>
									<div class="am-u-sm-9">
										<label class="am-radio-inline"> <input type="radio"
											name="capFavor" value="1" name="docInlineRadio"
											${updateInfo.capFavor==1?"checked":""}> ★
										</label> <label class="am-radio-inline"> <input type="radio"
											name="capFavor" value="2" name="docInlineRadio"
											${updateInfo.capFavor==2?"checked":""}> ★★
										</label> <label class="am-radio-inline"> <input type="radio"
											name="capFavor" value="3" name="docInlineRadio"
											${updateInfo.capFavor==3?"checked":""}> ★★★
										</label> <label class="am-radio-inline"> <input type="radio"
											name="capFavor" value="4" name="docInlineRadio"
											${updateInfo.capFavor==4?"checked":""}> ★★★★
										</label> <label class="am-radio-inline"> <input type="radio"
											name="capFavor" value="5" name="docInlineRadio"
											${updateInfo.capFavor==5?"checked":""}> ★★★★★
										</label>
									</div>
								</div>
								<!-- 喜爱 结束 -->


								<div class="am-form-group">
									<div class="am-u-sm-9 am-u-sm-push-3">
										<button type="submit" class="am-btn am-btn-primary am-radius">更改随想</button>
									</div>
								</div>
							</form>
							<!-- 表单结束 -->

						</div>
					</div>
				</div>
				<!-- 表单 结束 -->


			</div>
			<!-- 内容 详细 结束 -->

			<footer class="admin-content-footer am-center">
				<hr>
				<p class="am-padding-center">© 2018 LiySuzy
					li1121899707@gmail.com</p>
			</footer>
		</div>

		<!-- 内容 结束 -->
	</div>
	<!-- content end -->
	<!-- 非header 部分 结束 -->

	<a href="#"
		class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu"
		data-am-offcanvas="{target: '#admin-offcanvas'}"></a>

	<script
		src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/js/amazeui.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/app.js"></script>
	
	<c:if test="${ not empty updateFailure}">
		<script type="text/javascript">
			window.alert('${updateFailure}');
		</script>
	</c:if>
	
</body>

</html>