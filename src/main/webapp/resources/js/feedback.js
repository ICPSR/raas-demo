function insertForm(){
	var form = '\
		<p>Please note that your feedback is completely anonymous unless you choose otherwise.  If you wish to receive a response, please provide your name and email address.</p>\
		<form class="form-horizontal" method="post" action="https://www.icpsr.umich.edu/cgi-bin/htmail2">\
		    <input type="hidden" name="to" value="dsdr@icpsr.umich.edu" />\
			<input type="hidden" name="mailto" value="dsdr@icpsr.umich.edu" />\
			<input type="hidden" name="subject" value="Feedback from Web Site" />\
			<input type="hidden" name="successURL" value="http://www.icpsr.umich.edu/icpsrweb/DSDR/feedback-thanks.jsp">\
			<div class="form-group">\
				<label for="name" class="col-sm-2 control-label">Name</label>\
				<div class="col-sm-6">\
					<input type="text" class="form-control" id="name" />\
				</div>\
			</div>\
			<div class="form-group">\
				<label for="from" class="col-sm-2 control-label">Email</label>\
				<div class="col-sm-6">\
					<input type="email" class="form-control" id="from" name="from" value="anonymous@icpsr.umich.edu" />\
				</div>\
			</div>\
			<div class="form-group">\
				<label for="subject" class="col-sm-2 control-label">Subject</label>\
				<div class="col-sm-6">\
					<input type="text" class="form-control" id="subject" value="[TEST] "/>\
				</div>\
			</div>\
			<div class="form-group">\
				<label for="description" class="col-sm-2 control-label">Description</label>\
				<div class="col-sm-6">\
					<textarea class="form-control" id="description" rows="10"></textarea>\
				</div>\
			</div>\
			<div class="form-group">\
				<div class="col-sm-offset-2 col-sm-10">\
					<button type="submit" class="btn btn-default">Send Feedback</button>\
				</div>\
			</div>\
		</form>\
	';
	$('#form-body').append(form);
}
