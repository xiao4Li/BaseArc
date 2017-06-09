<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://baseArc.parsecode.tag" prefix="parsecode" %>
<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->

<!--[if !IE]><!--> <html lang="en" class="no-js"> <!--<![endif]-->

<!-- BEGIN HEAD -->

<head>

	<meta charset="utf-8" />

	<title>钰信诺家</title>

	<meta content="width=device-width, initial-scale=1.0" name="viewport" />

	<meta content="" name="description" />

	<meta content="" name="author" />

	<!-- BEGIN GLOBAL MANDATORY STYLES -->

	<link href="media/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/style-metro.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/style.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/style-responsive.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>

	<link href="media/css/uniform.default.css" rel="stylesheet" type="text/css"/>

	<!-- END GLOBAL MANDATORY STYLES -->

	<!-- BEGIN PAGE LEVEL STYLES -->

	<link href="media/css/jquery.gritter.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/daterangepicker.css" rel="stylesheet" type="text/css" />

	<link href="media/css/fullcalendar.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/jqvmap.css" rel="stylesheet" type="text/css" media="screen"/>

	<link href="media/css/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>

	<!-- END PAGE LEVEL STYLES -->
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
<script src="media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

<script src="media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>

<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

<script src="media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>

<script src="media/js/bootstrap.min.js" type="text/javascript"></script>

<!--[if lt IE 9]>

<script src="media/js/excanvas.min.js"></script>

<script src="media/js/respond.min.js"></script>

<![endif]-->

<script src="media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

<script src="media/js/jquery.blockui.min.js" type="text/javascript"></script>

<script src="media/js/jquery.cookie.min.js" type="text/javascript"></script>

<script src="media/js/jquery.uniform.min.js" type="text/javascript" ></script>

<!-- END CORE PLUGINS -->

<!-- BEGIN PAGE LEVEL PLUGINS -->

<script src="media/js/jquery.vmap.js" type="text/javascript"></script>

<script src="media/js/jquery.vmap.russia.js" type="text/javascript"></script>

<script src="media/js/jquery.vmap.world.js" type="text/javascript"></script>

<script src="media/js/jquery.vmap.europe.js" type="text/javascript"></script>

<script src="media/js/jquery.vmap.germany.js" type="text/javascript"></script>

<script src="media/js/jquery.vmap.usa.js" type="text/javascript"></script>

<script src="media/js/jquery.vmap.sampledata.js" type="text/javascript"></script>

<script src="media/js/jquery.flot.js" type="text/javascript"></script>

<script src="media/js/jquery.flot.resize.js" type="text/javascript"></script>

<script src="media/js/jquery.pulsate.min.js" type="text/javascript"></script>

<script src="media/js/date.js" type="text/javascript"></script>

<script src="media/js/daterangepicker.js" type="text/javascript"></script>

<script src="media/js/jquery.gritter.js" type="text/javascript"></script>

<script src="media/js/fullcalendar.min.js" type="text/javascript"></script>

<script src="media/js/jquery.easy-pie-chart.js" type="text/javascript"></script>

<script src="media/js/jquery.sparkline.min.js" type="text/javascript"></script>

<!-- END PAGE LEVEL PLUGINS -->

<!-- BEGIN PAGE LEVEL SCRIPTS -->

<script src="media/js/app.js" type="text/javascript"></script>

<script src="media/js/index.js" type="text/javascript"></script>

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