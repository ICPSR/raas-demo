<!doctype html>
<html lang="en">
<head>
<head>
<title>Search</title>
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

<link href="http://getbootstrap.com/docs/4.1/examples/cover/cover.css"
	rel="stylesheet">
<script
	src="https://search.dev.icpsr.umich.edu/search/resources/js/react-0.14.7/react.js"></script>
<script
	src="https://search.dev.icpsr.umich.edu/search/resources/js/react-0.14.7/react-dom.js"></script>
<script
	src="https://search.dev.icpsr.umich.edu/search/resources/js/app/search.js?buildNumber=ACX-DAT-JOB1-802"></script>
<link
	href="https://search.dev.icpsr.umich.edu/search/resources/css/search.css"
	type="text/css" rel="stylesheet" media="screen" />
<script
	src="https://search.dev.icpsr.umich.edu/search/dynamic/js/archive-urls.js"></script>
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

		<main role="main" class="inner cover">

		<div id="search"></div>
		<script type="text/javascript">
			var staff = true;

			var jwtToken = 'eyJhbGciOiJIUzUxMiJ9.eyJsYXN0TmFtZSI6IlVtbWVycGlsbGFpIiwiZGlzcGxheU5hbWUiOm51bGwsImlzcyI6IklTU1VFUl9JQ1BTUiIsImZpcnN0TmFtZSI6IkhhcnNoYWt1bWFyIiwic29jaWFsSWQiOm51bGwsImR1b0F1dGgiOmZhbHNlLCJzeXNBdXRoSWQiOjY1MTM4MiwiaWQiOjE0NDAsInN5c1Byb2ZpbGVVcmwiOm51bGwsImV4cCI6MTUyNzE3MDAxNywiaWF0IjoxNTI3MDgzNjE3LCJlbWFpbCI6ImhhcnNoYXVAdW1pY2guZWR1Iiwic29jaWFsSWRUeXBlIjpudWxsfQ.b_O5BDiTGN-t563kKljI3Abug3rKyUNhc7wToUBBiCtbE97Pcw7tR-0X4gIhP4Es9A_dc1vXocGva_f9yJM_rA';
			$(document).ajaxSend(function(event, jqxhr, settings) {
				jqxhr.setRequestHeader("Authorization", "Bearer " + jwtToken);
			});
			var requesterSessionId = "C51B64E6E09E66E8761B42A478BA86BF";
			var datalumosServerUrl = "/datalumos";
			var searchManagerUrl = "https://search.dev.icpsr.umich.edu/search";
			var buildSearchResultsHeader = null;
			var buildSearchResult = null;
			var saveSearchResult = false;
			var customActions = [];
			var savedResults = [];
			ReactDOM.render(React.createElement(SearchPage, {
				searchResults : {
					"response" : {
						"docs" : [ {
							"DATEUPDATED" : "2018-04-12T00:00:00Z",
							"OWNER" : "datalumos",
							"SUMMARY" : [ "asdfasdfasdfsadfasssss111" ],
							"TITLE" : "asdfasdf",
							"AUTHOR" : [ "Ravi11, Raghunath" ],
							"ID" : "102230"
						}, {
							"DATEUPDATED" : "2017-10-03T00:00:00Z",
							"OWNER" : "datalumos",
							"TITLE" : "test 1170",
							"ID" : "101910"
						}, {
							"DATEUPDATED" : "2017-09-28T00:00:00Z",
							"OWNER" : "datalumos",
							"TITLE" : "Test of JSON-LD",
							"ID" : "101873"
						}, {
							"DATEUPDATED" : "2017-07-05T00:00:00Z",
							"OWNER" : "datalumos",
							"TITLE" : "DataLumos-AshTest, title update",
							"ID" : "101564"
						}, {
							"DATEUPDATED" : "2017-06-27T00:00:00Z",
							"OWNER" : "datalumos",
							"TITLE" : "Test Data Lumos",
							"ID" : "100770"
						} ],
						"numFound" : 5,
						"start" : 0
					},
					"responseHeader" : {
						"QTime" : 11,
						"params" : {
							"facet.field" : [ "KEYWORD_FREE_FACET",
									"GEOGRAPHY_FACET", "RESTRICTED_DATA_TYPE",
									"JOURNAL_FACET", "AUTHOR_FACET",
									"DATEUPDATED" ],
							"qt" : "query_dm",
							"fl" : "ID,TITLE,OWNER,AUTHOR,DATEUPDATED,SUMMARY",
							"start" : "0",
							"fq" : "ARCHIVE:datalumos",
							"sort" : "DATEUPDATED desc",
							"rows" : "25",
							"version" : "2.2",
							"facet.query" : [ "DATEUPDATED:[NOW-7DAYS TO NOW]",
									"DATEUPDATED:[NOW-1MONTH TO NOW]",
									"DATEUPDATED:[NOW-3MONTHS TO NOW]",
									"DATEUPDATED:[NOW-1YEAR TO NOW]" ],
							"facet.limit" : "100",
							"facet.mincount" : "1",
							"wt" : "json",
							"facet" : "true",
							"facet.sort" : "count"
						},
						"status" : 0
					},
					"facet_counts" : {
						"facet_intervals" : {},
						"facet_queries" : {
							"DATEUPDATED:[NOW-3MONTHS TO NOW]" : 1,
							"DATEUPDATED:[NOW-7DAYS TO NOW]" : 0,
							"DATEUPDATED:[NOW-1MONTH TO NOW]" : 0,
							"DATEUPDATED:[NOW-1YEAR TO NOW]" : 5
						},
						"facet_fields" : {
							"AUTHOR_FACET" : [ "Ravi11, Raghunath", 1 ],
							"DATEUPDATED" : [ "2017-06-27T00:00:00Z", 1,
									"2017-07-05T00:00:00Z", 1,
									"2017-09-28T00:00:00Z", 1,
									"2017-10-03T00:00:00Z", 1,
									"2018-04-12T00:00:00Z", 1 ],
							"KEYWORD_FREE_FACET" : [],
							"JOURNAL_FACET" : [],
							"GEOGRAPHY_FACET" : [ "afds", 1 ],
							"RESTRICTED_DATA_TYPE" : [ "Public Use", 5 ]
						},
						"facet_heatmaps" : {},
						"facet_ranges" : {}
					}
				},
				searchConfig : {
					"defaultTitle" : null,
					"searchType" : "studies",
					"action" : null,
					"displayFields" : [ "ID", "TITLE", "OWNER", "AUTHOR",
							"DATEUPDATED", "SUMMARY" ],
					"application" : "datalumos",
					"owner" : "datalumos",
					"facetFields" : [ {
						"label" : "Subject Terms",
						"field" : "KEYWORD_FREE_FACET",
						"dataType" : "text",
						"customValues" : null,
						"browseAction" : "keywords",
						"maxFacetValues" : 5,
						"multiSelect" : true,
						"visible" : true,
						"thesaurusLink" : null,
						"moreInfo" : null
					}, {
						"label" : "Geography",
						"field" : "GEOGRAPHY_FACET",
						"dataType" : "text",
						"customValues" : null,
						"browseAction" : "geographies",
						"maxFacetValues" : 5,
						"multiSelect" : true,
						"visible" : true,
						"thesaurusLink" : null,
						"moreInfo" : null
					}, {
						"label" : "Access Level",
						"field" : "RESTRICTED_DATA_TYPE",
						"dataType" : "text",
						"customValues" : null,
						"browseAction" : null,
						"maxFacetValues" : 5,
						"multiSelect" : true,
						"visible" : false,
						"thesaurusLink" : null,
						"moreInfo" : null
					}, {
						"label" : "Journal",
						"field" : "JOURNAL_FACET",
						"dataType" : "text",
						"customValues" : null,
						"browseAction" : "journals",
						"maxFacetValues" : 5,
						"multiSelect" : false,
						"visible" : true,
						"thesaurusLink" : null,
						"moreInfo" : null
					}, {
						"label" : "Government Agency",
						"field" : "AUTHOR_FACET",
						"dataType" : "text",
						"customValues" : null,
						"browseAction" : "agencies",
						"maxFacetValues" : 5,
						"multiSelect" : false,
						"visible" : true,
						"thesaurusLink" : null,
						"moreInfo" : null
					}, {
						"label" : "Recency",
						"field" : "DATEUPDATED",
						"dataType" : "facetQuery",
						"customValues" : [ {
							"value" : "[NOW-7DAYS TO NOW]",
							"label" : "New/updated this week"
						}, {
							"value" : "[NOW-1MONTH TO NOW]",
							"label" : "New/updated this month"
						}, {
							"value" : "[NOW-3MONTHS TO NOW]",
							"label" : "New/updated this quarter"
						}, {
							"value" : "[NOW-1YEAR TO NOW]",
							"label" : "New/updated this year"
						} ],
						"browseAction" : null,
						"maxFacetValues" : 5,
						"multiSelect" : false,
						"visible" : true,
						"thesaurusLink" : null,
						"moreInfo" : null
					} ],
					"sortFields" : [ {
						"value" : "score desc,TITLE_SORT asc",
						"label" : "Study Relevance"
					}, {
						"value" : "TITLE_SORT asc",
						"label" : "Title A-Z"
					}, {
						"value" : "DATEUPDATED desc",
						"label" : "Released/Updated"
					} ],
					"defaultNoRelevancySort" : "DATEUPDATED desc",
					"recordsPerPageOptions" : [ 25, 50, 100 ],
					"scope" : [ {
						"field" : "ARCHIVE",
						"value" : "datalumos",
						"label" : "ARCHIVE=datalumos",
						"visible" : false
					} ],
					"idVariable" : "ID",
					"titleVariable" : "TITLE",
					"dateVariable" : "DATEUPDATED",
					"authorVariable" : "AUTHOR",
					"module" : null,
					"tabLabel" : null
				}
			}), document.getElementById("search"));
		</script> </main>

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
