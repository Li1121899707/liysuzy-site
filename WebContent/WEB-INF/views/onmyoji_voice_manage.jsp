<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><!-- 导入核心标签库 -->

<!doctype html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Amaze UI Admin index Examples</title>
<meta name="description" content="管理随想">
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
								class="am-icon-facebook"></i> <span>&nbsp;&nbsp;&nbsp;阴阳师</span>
								<i
								class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
						</a>

							<ul class="tpl-left-nav-sub-menu">
								<i>  <a href="${pageContext.request.contextPath}/onmyojiVoice/list"> <i class="am-icon-angle-right"></i> <span>管理语音</span>
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

		<!-- 内容 开始 -->
		<div class="admin-content">
			<!-- 内容 详细 开始 -->
			<div class="admin-content-body">

				<!-- 表单标题 开始 -->
				<div class="tpl-portlet-components">
					<div class="portlet-title">
						<div class="caption font-green bold">
							<span class="am-icon-pencil-square"></span>&nbsp; &nbsp; 管理阴阳师式神语音
						</div>

						<div class="tpl-portlet-input tpl-fz-ml">
							<ol class="am-breadcrumb">
								<li><a href="#" class="am-icon-home">首页</a></li>
								<li><a href="#">阴阳师</a></li>
								<li class="am-active">管理阴阳师式神语音</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- 表单标题 结束 -->

				<!-- 表单 开始 -->
				<div class="tpl-block">
					<div class="am-g">
						<div class="am-u-sm-12 am-u-md-9"></div>
						<div class="am-u-sm-12 am-u-md-3">
							<div class="am-input-group am-input-group-sm">
								<input type="text" class="am-form-field"> <span
									class="am-input-group-btn">
									<button
										class="am-btn  am-btn-default am-btn-success tpl-am-btn-success am-icon-search"
										type="button"></button>
								</span>
							</div>
						</div>
					</div>
					<div class="am-g">
						<div class="am-u-sm-12">
							<form class="am-form">
								<table
									class="am-table am-table-striped am-table-hover table-main">
									<thead>
										<tr>
											<th class="table-id">ID</th>
											<th class="table-title">式神录[日文]</th>
											<th class="table-main">式神录[中文]</th>
											<th class="table-main">式神录[英文]</th>
											<th class="table-main">稀有度</th>
											<th class="table-main">CV</th>
											<th class="table-main">语音类型</th>
											<th class="table-main">技能语音[日文]</th>
											<th class="table-main">技能语音[中文]</th>
											<th class="table-set">操作</th>
										</tr>
									</thead>
									<tbody>
										<!-- JSTL; JAVA服务器标准标签库 -->
										<c:if test="${not empty pageUtil.list }">
											<c:forEach items="${pageUtil.list }" var="list"
												varStatus="status" begin="0" end="8">

												<tr>
													<td>${status.count}</td>
													<td>${list.shiJp}</td>
													<td>${list.shiZh}</td>
													<td>${list.shiEn}</td>
													<td>${list.rareName}</td>
													<td>${list.cvNameZh}</td>
													<td>${list.vtType}
													<c:if test="${list.vtAwake==1 }">[觉醒前]</c:if> <c:if
															test="${list.vtAwake==2 }">[觉醒后]</c:if>
													</td>
													<td>${list.voiceJp}</td>
													<td>${list.voiceZh}</td>
													<td><a
														href="${pageContext.request.contextPath }/onmyojiVoice/${sr.capId}/update?form">
															<span class="am-badge am-badge-primary am-radius"
															style="font-weight: 300;"> <span
																class="am-icon-pencil-square-o"></span> 编辑
														</span>
													</a> <a
														href="${pageContext.request.contextPath }/onmyojiVoice/${sr.capId}/update?form">
															<span class="am-badge am-badge-danger am-radius"
															style="font-weight: 300;"> <span
																class="am-icon-trash-o"></span> 删除
														</span>
													</a></td>
												</tr>
											</c:forEach>
										</c:if>
										<c:if test="${empty pageUtil.list}">
											<tr>
												<td colspan="11">无查询结果</td>
											</tr>
										</c:if>

									</tbody>
								</table>




								<div class="am-cf">

									<div class="am-fl">
										<ul class="am-pagination tpl-pagination">
											<li><a>共 <strong>${pageUtil.pageNumber}</strong> 条目
											</a></li>
											<li><a>共 <strong>${pageUtil.pageCount}</strong> 页
											</a></li>
											<li><a>第 <strong>${pageUtil.pageIndex}</strong> 页
											</a></li>
										</ul>
									</div>

									<div class="am-fr">
										<ul class="am-pagination tpl-pagination">
											<li><a
												href="${pageContext.request.contextPath }/onmyojiVoice/list?pageIndex=1">首页</a>
											</li>
											<c:choose>
												<c:when test="${pageUtil.pageIndex - 1 > 0}">
													<li><a
														href="${pageContext.request.contextPath }/onmyojiVoice/list?pageIndex=${pageUtil.pageIndex - 1}">上一页</a>
													</li>
												</c:when>
											</c:choose>


											<c:forEach begin="1" end="${pageUtil.pageCount}" var="i">
												<li><a
													href="${pageContext.request.contextPath }/onmyojiVoice/list?pageIndex=${i}"
													style="text-decoration: none;">${i}</a></li>
											</c:forEach>


											<c:choose>
												<c:when test="${pageUtil.pageCount==0}">
													<li><a
														href="${pageContext.request.contextPath }/onmyojiVoice/list?pageIndex=${pageUtil.pageIndex }">下一页</a>
													</li>
												</c:when>
												<c:when
													test="${pageUtil.pageIndex + 1 <= pageUtil.pageCount}">
													<li><a
														href="${pageContext.request.contextPath }/onmyojiVoice/list?pageIndex=${pageUtil.pageIndex+1}">下一页</a>
													</li>
												</c:when>

											</c:choose>

											<c:choose>
												<c:when test="${page.pageCount==0}">
													<li><a
														href="${pageContext.request.contextPath }/onmyojiVoice/list?pageIndex=${pageUtil.pageIndex}">尾页</a>
													</li>
												</c:when>
												<c:otherwise>
													<li><a
														href="${pageContext.request.contextPath }/onmyojiVoice/list?pageIndex=${pageUtil.pageCount}">尾页</a>
													</li>

												</c:otherwise>
											</c:choose>

										</ul>
									</div>
								</div>

							</form>
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

	<c:if test="${ not empty createFailure}">
		<script type="text/javascript">
			window.alert('${createFailure}');
		</script>
	</c:if>
	<c:if test="${not empty createSuccess}">
		<script type="text/javascript">
			window.alert('${createSuccess}');
		</script>
	</c:if>
	<c:if test="${ not empty updateSuccess}">
		<script type="text/javascript">
			window.alert('${updateSuccess}');
		</script>
	</c:if>

</body>

</html>