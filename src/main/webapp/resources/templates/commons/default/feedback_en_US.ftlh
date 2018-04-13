<!DOCTYPE html>
<html lang="en">
<head>
	<style>
		span.requiredField,.red,.requiredField {
			color: red;
		}
		.busyModal {
			position: fixed;
			z-index: 999;
			height: 100%;
			width: 100%;
			top: 0;
			left: 0;
			background-image: url("${serverUrl}/resources/images/ajax-busy.gif");
			background-repeat: no-repeat;
			background-position: center;
		}
		
	</style>
	<title>Report a Problem/Feedback</title>
	<script type="text/javascript">
			$(document)
				.ajaxStart(function() {
					$("#busy").addClass('busyModal');
				})
				.ajaxStop(function() {
					$("#busy").removeClass('busyModal');
				})
			$(function(){
				$("#messageSuccess").hide();
				$("#messageError").hide();
				var serverUrl="${serverUrl}"
				var originLoc="${originLoc}";
				var feedbackUUID="${feedbackUUID}";
				
				$('#feedbackForm').submit(function(event){
					event.preventDefault();
					var url=serverUrl+"/submitFeedback";
					var name=$("#userName").val();
					var email=$("#userEmail").val();
					var level=$("#level").val();
					var feedbackTypes = [];
					if($("input[name='feedbackType']:checked").length==0){
						$('#messageSuccess').hide();
						$('#messageError').html("Select atleast one feedback type");
						$('#messageError').show();
						return;
					}
					if(!validateEmail(email)){
						$('#messageSuccess').hide();
						$('#messageError').html("Enter a valid email id (example@domain.com)");
						$('#messageError').show();
						return;
					}
					$.each($("input[name='feedbackType']:checked"), function(){            
					    feedbackTypes.push($(this).val());
					});
					var description=$('#description').val();
					$.ajax({
						type: "POST",
						url :url,	
						dataType: "json",
						data:{userEmail:email, userName:name,feedbackTypes:feedbackTypes.join(),origin:originLoc,description:description,feedbackUUID:feedbackUUID,level:level},
						cache: false,
						success: function(data){
							console.log(data)
							if(data==200){
								$('input[name=feedbackType]:checked').prop('checked', false);
								$('#description').val("");
								$("#messageError").hide();
								$('#messageSuccess').html("Problem/Feedback submitted successfully");
								$('#messageSuccess').show();
							}
							else{
								$('#messageSuccess').hide()
								$('#messageError').html("There was an error please try again");
								$('#messageError').show();
							}
						},
						error : function(xhr, status, err) {
							console.error(xhr, status, err);
						}
					});
				});
			});
			function validateEmail(email) {
				var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
				return re.test(email);
			}

	</script>
</head>		
<body>
	<div class="container-fluid">
		<div id="busy"></div>
		<h3>Report a Problem/ Provide Feedback</h3>
		<div id="messageSuccess" class="alert alert-success" role="alert"></div>
		<div id="messageError" class="alert alert-danger" role="alert"></div>
		<div id="form-body">
			<form id="feedbackForm" class="form-horizontal" method="post">
				<input type="hidden" name="level" id="level"  value='${level!""}'/>
				<div class="form-group">
					<span class="requiredField">(required)</span>
					<label htmlFor="userName" class="col-sm-2 control-label">Name</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="userName" id="userName"  value='${userName!""}' placeholder="Enter Full Name" required="required" />
					</div>
				</div>

				<div class="form-group">
					<span class="requiredField">(required)</span>
					<label htmlFor="from" class="col-sm-2 control-label">Email</label>
					<div class="col-sm-6">
						<input type="email" class="form-control" name="userEmail" id="userEmail"  value='${userEmail!""}'  placeholder="Enter Email" required="required"/>
					</div>
				</div>
				<div class="form-group">
					<label htmlFor="feedbackType" class="col-sm-2 control-label">Problem/Feedback Type</label>
					<div class="col-sm-6" id="problemsCheckBox">
						<#list feedbackCodes?keys as key>
						    <p><input type="checkbox" name="feedbackType" value="${key}"/>&nbsp;${feedbackCodes[key]}</p> 
						</#list> 
					</div>
				</div>
				<div class="form-group">
					<span class="requiredField">(required)</span>
					<label htmlFor="description" class="col-sm-2 control-label">Description</label>
					<div class="col-sm-6">
						<textarea class="form-control" id="description" rows="10" required="required"></textarea>
				    </div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-primary">Submit</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>