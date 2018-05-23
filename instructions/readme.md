# Instructions
## Get login credential
* Establish a credential token, by logging into [DataLumos](https://dev.datalumos.org/datalumos/workspace)
* Right click and copy the JS variable `var jwtToken = '..............';`

## Setup Workspace
* Edit workspace.jsp and paste the below code snippet within tags `<main></main>`

```javascript
<div id="workspace"></div>
		<script type="text/javascript">
			var jwtToken = 'eyJhbGciOiJIUzUxMiJ9.eyJsYXN0TmFtZSI6IlVtbWVycGlsbGFpIiwiZGlzcGxheU5hbWUiOm51bGwsImlzcyI6IklTU1VFUl9JQ1BTUiIsImZpcnN0TmFtZSI6IkhhcnNoYWt1bWFyIiwic29jaWFsSWQiOm51bGwsImR1b0F1dGgiOmZhbHNlLCJzeXNBdXRoSWQiOjY1MTM4MiwiaWQiOjE0NDAsInN5c1Byb2ZpbGVVcmwiOm51bGwsImV4cCI6MTUyNzE3MDAxNywiaWF0IjoxNTI3MDgzNjE3LCJlbWFpbCI6ImhhcnNoYXVAdW1pY2guZWR1Iiwic29jaWFsSWRUeXBlIjpudWxsfQ.b_O5BDiTGN-t563kKljI3Abug3rKyUNhc7wToUBBiCtbE97Pcw7tR-0X4gIhP4Es9A_dc1vXocGva_f9yJM_rA';
			$(document).ajaxSend(function(event, jqxhr, settings) {
				jqxhr.setRequestHeader("Authorization", "Bearer " + jwtToken);
			});
			var goToPathVal = '<%=request.getParameter("goToPath")%>';
			var goToLevelVal = '<%=request.getParameter("goToLevel")%>
			';
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
									url : 'https://deposit.dev.icpsr.umich.edu/deposit/getSipProjectStatus?path='
											+ path,
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
												actionPostUrl : './reviewPublish.jsp?resourcePath='
														+ path
														+ '&type='
														+ level
														+ '&tenant=datalumos',
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
			ReactDOM.render(React.createElement(Workspace, null), document
					.getElementById('workspace'));
		</script>
```

## Setup review page

## Setup search


