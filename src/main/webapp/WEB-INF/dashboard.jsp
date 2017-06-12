<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://baseArc.parsecode.tag" prefix="parsecode" %>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->

<!--[if !IE]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
<head>

	<meta charset="utf-8" />

	<title>钰信诺家</title>

	<meta content="width=device-width, initial-scale=1.0" name="viewport" />

	<meta content="" name="description" />

	<meta content="" name="author" />
	<jsp:include page="static_css.jsp"/>


	<link href="${basePath}/media/css/jquery.gritter.css" rel="stylesheet" type="text/css"/>

	<link href="${basePath}/media/css/daterangepicker.css" rel="stylesheet" type="text/css" />

	<link href="${basePath}/media/css/fullcalendar.css" rel="stylesheet" type="text/css"/>

	<link href="${basePath}/media/css/jqvmap.css" rel="stylesheet" type="text/css" media="screen"/>

	<link href="${basePath}/media/css/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>

	<link rel="shortcut icon" href="media/image/favicon.ico" />
</head>
<body class="page-header-fixed">
<jsp:include page="header.jsp" flush="true"/>
<div class="page-container">
	<!--包含导航条-->
	<jsp:include page="nav.jsp" flush="true">
		<jsp:param name="path" value="dashboard"/>
	</jsp:include>
	<div class="page-content">
		<div class="container-fluid">
			<!--包含标题 面包屑-->
			<jsp:include page="title.jsp" flush="true"/>
			<jsp:include page="content.jsp" flush="true"/>
		</div>
	</div>
</div>
<jsp:include page="footer.jsp"/>
<jsp:include page="static_js.jsp"/>


<!-- BEGIN PAGE LEVEL PLUGINS -->

<script src="${basePath}/media/js/jquery.vmap.js" type="text/javascript"></script>

<script src="${basePath}/media/js/jquery.vmap.russia.js" type="text/javascript"></script>

<script src="${basePath}/media/js/jquery.vmap.world.js" type="text/javascript"></script>

<script src="${basePath}/media/js/jquery.vmap.europe.js" type="text/javascript"></script>

<script src="${basePath}/media/js/jquery.vmap.germany.js" type="text/javascript"></script>

<script src="${basePath}/media/js/jquery.vmap.usa.js" type="text/javascript"></script>

<script src="${basePath}/media/js/jquery.vmap.sampledata.js" type="text/javascript"></script>

<script src="${basePath}/media/js/jquery.flot.js" type="text/javascript"></script>

<script src="${basePath}/media/js/jquery.flot.resize.js" type="text/javascript"></script>

<script src="${basePath}/media/js/jquery.pulsate.min.js" type="text/javascript"></script>

<script src="${basePath}/media/js/date.js" type="text/javascript"></script>

<script src="${basePath}/media/js/daterangepicker.js" type="text/javascript"></script>

<script src="${basePath}/media/js/jquery.gritter.js" type="text/javascript"></script>

<script src="${basePath}/media/js/fullcalendar.min.js" type="text/javascript"></script>

<script src="${basePath}/media/js/jquery.easy-pie-chart.js" type="text/javascript"></script>

<script src="${basePath}/media/js/jquery.sparkline.min.js" type="text/javascript"></script>

<!-- END PAGE LEVEL PLUGINS -->

<!-- BEGIN PAGE LEVEL SCRIPTS -->

<script src="${basePath}/media/js/app.js" type="text/javascript"></script>

<script src="${basePath}/media/js/index.js" type="text/javascript"></script>

<!-- END PAGE LEVEL SCRIPTS -->

<script>
	jQuery(document).ready(function() {
		App.init(); // initlayout and core plugins
		Index.init();
		var content = $('.page-content');
		content.attr('style', 'min-height:' + ($(window).height() - 80) + 'px !important');
	});
</script>
</body>
</html>