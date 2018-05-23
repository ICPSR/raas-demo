<!doctype html>
<html lang="en">
<head>
<head>
<title>Workspace</title>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="/raas/resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="/raas/resources/css/bootstrap-theme.min.css"
	rel="stylesheet" />
<link href="/raas/resources/css/screen-css.jsp" type="text/css"
	rel="stylesheet" media="screen" />
<link href="/raas/resources/css/splash-css.jsp" type="text/css"
	rel="stylesheet" media="screen" />
<link href="/raas/resources/css/print-css.jsp" type="text/css"
	rel="stylesheet" media="print" />
<script
	src="/raas/resources/scripts/jquery-ui-1.12.0/external/jquery/jquery.js"></script>
<link href="/raas/resources/scripts/jquery-ui-1.12.0/jquery-ui.min.css"
	type="text/css" rel="stylesheet" />
<link
	href="/raas/resources/scripts/jquery-ui-1.12.0/jquery-ui.theme.min.css"
	type="text/css" rel="stylesheet" />
<script src="/raas/resources/scripts/jquery-ui-1.12.0/jquery-ui.min.js"></script>
<script src="/raas/resources/js/bootstrap.min.js"></script>
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i"
	rel="stylesheet">

<link
	href="https://deposit.dev.icpsr.umich.edu/deposit/resources/scripts/bootstrap3-editable/css/bootstrap-editable.css"
	rel="stylesheet" />
<link
	href="https://deposit.dev.icpsr.umich.edu/deposit/resources/scripts/bootstrap-treeview-1.2.0/bootstrap-treeview.min.css"
	rel="stylesheet" />
<link
	href="https://deposit.dev.icpsr.umich.edu/deposit/resources/scripts/bootstrap3-editable/inputs-ext/wysihtml5/bootstrap-wysihtml5-0.0.2/bootstrap-wysihtml5-0.0.2.css"
	rel="stylesheet" />
<link
	href="https://deposit.dev.icpsr.umich.edu/deposit/resources/styles/datepicker.css"
	rel="stylesheet" />
<link
	href="https://deposit.dev.icpsr.umich.edu/deposit/resources/styles/workspace.css"
	rel="stylesheet" />
<link
	href="https://deposit.dev.icpsr.umich.edu/deposit/resources/styles/suggest.css"
	rel="stylesheet" />
<link
	href="https://deposit.dev.icpsr.umich.edu/deposit/resources/scripts/select2-4.0.3/css/select2.css"
	rel="stylesheet" />
<link
	href="https://deposit.dev.icpsr.umich.edu/deposit/resources/scripts/bootstraptour/css/bootstrap-tour.css"
	rel="stylesheet" />
<link href="http://getbootstrap.com/docs/4.1/examples/cover/cover.css"
	rel="stylesheet">

<script
	src="https://deposit.dev.icpsr.umich.edu/deposit/resources/scripts/react-0.14.7/react.js"></script>
<script
	src="https://deposit.dev.icpsr.umich.edu/deposit/resources/scripts/react-0.14.7/react-dom.js"></script>
<script
	src="https://deposit.dev.icpsr.umich.edu/deposit/resources/scripts/dropzone.js"></script>
<script
	src="https://deposit.dev.icpsr.umich.edu/deposit/resources/scripts/bootstrap3-editable/js/bootstrap-editable.min.js"></script>
<script
	src="https://deposit.dev.icpsr.umich.edu/deposit/resources/scripts/bootstrap3-editable/inputs-ext/wysihtml5/wysihtml5.js"></script>
<script
	src="https://deposit.dev.icpsr.umich.edu/deposit/resources/scripts/bootstrap3-editable/inputs-ext/wysihtml5/bootstrap-wysihtml5-0.0.2/wysihtml5-0.3.0.js"></script>
<script
	src="https://deposit.dev.icpsr.umich.edu/deposit/resources/scripts/bootstrap3-editable/inputs-ext/wysihtml5/bootstrap-wysihtml5-0.0.2/bootstrap-wysihtml5-0.0.2.js"></script>
<script
	src="https://deposit.dev.icpsr.umich.edu/deposit/resources/scripts/select2-4.0.3/js/select2.js"></script>
<script
	src="https://deposit.dev.icpsr.umich.edu/deposit/resources/scripts/bootstrap3-editable/inputs-ext/moment.js"></script>
<script
	src="https://deposit.dev.icpsr.umich.edu/deposit/resources/scripts/bootstrap-treeview-1.2.0/bootstrap-treeview.min.js"></script>
<script
	src="https://deposit.dev.icpsr.umich.edu/deposit/resources/scripts/d3plus/js/d3.min.js"></script>
<script
	src="https://deposit.dev.icpsr.umich.edu/deposit/resources/scripts/d3plus/js/d3plus.min.js"></script>
<script
	src="https://deposit.dev.icpsr.umich.edu/deposit/resources/scripts/bootstraptour/js/bootstrap-tour.js"></script>

<script
	src="https://deposit.dev.icpsr.umich.edu/deposit/resources/scripts/app/deposit.js?buildNumber=ATP-DAT-JOB1-667"></script>

<script>
	window.onerror = function() {
		console.log('Error reported !!');
		$("#busy").removeClass('busyModal');
	};
	$(document)
			.ajaxError(
					function(event, jqXHR, settings, thrownError) {
						$("#busy").removeClass('busyModal');
						var msg = '<div class="alert alert-danger alert-dismissible fade in" role="alert"> <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">�</span></button>';
						var errmsg = '';
						msg = msg
								+ '<strong>Oops!</strong> Problem processing your request. Try again and if problem persists, please email ICPSR support: <a href="mailto:help@icpsr.umich.edu">help@icpsr.umich.edu</a><br>';
						if (jqXHR.status == 0) {
							errmsg = 'Network problem';
						} else if (jqXHR.status == 400) {
							errmsg = 'Bad request';
						} else if (jqXHR.status == 401) {
							errmsg = 'Unauthorized';
						} else if (jqXHR.status == 403) {
							errmsg = 'Forbidden';
						} else if (jqXHR.status == 404) {
							errmsg = 'Requested page not found';
						} else if (jqXHR.status == 408
								|| thrownError == 'timeout') {
							errmsg = 'Time out error';
						} else if (jqXHR.status == 500) {
							errmsg = 'Internal server error';
						} else if (thrownError == 'parsererror') {
							errmsg = 'Requested JSON parse failed';
						} else if (thrownError == 'abort') {
							errmsg = 'AJAX request aborted';
						} else {
							errmsg = 'Uncaught Error:\n' + jqXHR.responseText;
						}
						msg = msg + errmsg;
						msg = msg + '; URL : ' + settings.url + '</div>';
						$("#errormsg").html(msg);
					});
</script>
</head>
<body>
	<div class="container-fluid d-flex w-100 h-100 p-3 mx-auto flex-column">
		<header class="masthead mb-auto">
			<div class="inner">
				<h3 class="masthead-brand">RaaS@ICPSR</h3>
				<nav class="nav nav-masthead justify-content-center">
					<a class="nav-link active" href="home.jsp">Home</a> <a
						class="nav-link" href="features.jsp">Features</a> <a
						class="nav-link" href="contacts.jsp">Contacts</a>
				</nav>
			</div>
		</header>

		<main role="main" class="inner cover">FIXME</main>
		<footer class="mastfoot mt-auto">
			<div class="inner">
				<p>
					Cover template for <a href="https://getbootstrap.com/">Bootstrap</a>,
					by <a href="https://twitter.com/mdo">@mdo</a>.
				</p>
			</div>
		</footer>
	</div>
	<script src="/raas/resources/js/bootstrap.min.js"></script>
</body>
</html>
