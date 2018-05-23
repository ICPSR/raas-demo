# Instructions
## Get login credential
* Establish a credential token, by logging into [DataLumos](https://dev.datalumos.org/datalumos/workspace)
* Right click and copy the JS variable `var jwtToken = '..............';`
* You will have to use this value in below provided code snippets, look for word **USER_TOKEN**

## Setup Workspace
* Edit workspace.jsp and paste the below code snippet within tags `<main role="main" class="inner cover">FIXME</main>`

```javascript
<div id="workspace"></div>
<script type="text/javascript">
	var jwtToken = 'USER_TOKEN';
	$(document).ajaxSend(function(event, jqxhr, settings) {
		jqxhr.setRequestHeader("Authorization", "Bearer " + jwtToken);
	});
	var goToPathVal = '<%=request.getParameter("goToPath") == null ? "": request.getParameter("goToPath")%>';
	var goToLevelVal = '<%=request.getParameter("goToLevel") == null ? "" : request.getParameter("goToLevel") %>';
	var userEmail = 'email@umich.edu';
	var userDisplayName = 'John Doe';
	var depositConfig = {
		bibliographyServerUrl : 'https://bibliography.dev.icpsr.umich.edu/bibliography',
		depositServerUrl : "https://deposit.dev.icpsr.umich.edu/deposit",
		tenant : "datalumos",
		homePath : "/datalumos",
		goToPath : goToPathVal,
		goToLevel : goToLevelVal,
		workspaceUrl : "workspace.jsp",
		reviewPublishUrl : "reviewPublish.jsp",
		includeProcessed : true,
		userDisplayName : userDisplayName,
		userEmail : userEmail,
		embed : true,
		actions : function(path, level) {
			if (level != null && level == 'project') {
				var actionVals = [];
				$
						.ajax({
							url : 'https://deposit.dev.icpsr.umich.edu/deposit/getSipProjectStatus?path='+ path,
							dataType : "json",
							type : 'GET',
							async : false,
							success : function(data) {
								var actionLabel = 'Publish Project';
								var actionDisabled = false;
								if (data != null) {
									if (data.workspaceStatus == 'edited') {
										actionLabel = 'Re-Publish Project';
									} else if (data.workspaceStatus == 'published') {
										actionLabel = 'Edit Project to Re-Publish';
										actionDisabled = true;
									}
									actionVals = [ {
										actionPostUrl : './reviewPublish.jsp?resourcePath='+ path+ '&type='+ level+ '&tenant=datalumos',
										actionLabel : actionLabel,
										actionDisabled : actionDisabled
									} ];
								}
							}.bind(this),
							error : function(xhr, status, err) {
								console.error(xhr, status, err);
							}
						});
				return actionVals;
			} else {
				return [];
			}
		}
	};
	ReactDOM.render(React.createElement(Workspace, null), document.getElementById('workspace'));
</script>
```

## Setup review page
* Edit reviewPublish.jsp and paste the below code snippet within tags `<main role="main" class="inner cover">FIXME</main>`
```javascript
<article>
		<div class="container-fluid">
			<h3>Publish data</h3>
			<div class="alert alert-info" role="alert">Please review the
				data carefully. Once the Data Collection is published, you will not
				be able to delete it from the repository. If any of this information
				is incomplete or incorrect, please return to the previous screen to
				make the necessary changes.</div>
			<div id="publish"></div>
			<div id="map"></div>
		</div>
	</article>
	<script type="text/javascript">
		var resPath = '<%= request.getParameter("resourcePath") == null ? "" : request.getParameter("resourcePath") %>';
		var resType = 'project';
		var jwtToken = 'USER_TOKEN';
		$(document).ajaxSend(function(event, jqxhr, settings) {
			jqxhr.setRequestHeader("Authorization", "Bearer " + jwtToken);
		});
		var depositConfig = {
			depositServerUrl : "https://deposit.dev.icpsr.umich.edu/deposit",
			bibliographyServerUrl: 'https://bibliography.dev.icpsr.umich.edu/bibliography',
			workspaceUrl : "workspace.jsp",
			reviewTermsUrl : "reviewTerms",
			tenant : "datalumos",
			homePath : "/datalumos"
		};
		var publishResource = {
			resourcePath : resPath,
			type : resType
		};
		ReactDOM.render(React.createElement(Reviewer, {publishResource : publishResource,isPublish : true}), document.getElementById('publish'));
	</script>
```

## Setup search
* Search is already wired up to demo a sample search config, currently this requires some additional configuration and is restricted with config that is used in this demo. Please review the search.jsp page to understand supported configuration elements.