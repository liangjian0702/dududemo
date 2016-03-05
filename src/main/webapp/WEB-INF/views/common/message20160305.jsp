<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<div class = "alert alert-success alert-dismissable">
   <button type = "button" class = "close" data-dismiss = "alert" aria-hidden = "true">
      &times;
   </button>
	
   Success! Well done its submitted.
</div>

<div class = "alert alert-info alert-dismissable">
   <button type = "button" class = "close" data-dismiss = "alert" aria-hidden = "true">
      &times;
   </button>
	
   Info! take this info.
</div>

<div class = "alert alert-warning alert-dismissable">
   <button type = "button" class = "close" data-dismiss = "alert" aria-hidden = "true">
      &times;
   </button>
	
   Warning ! Dont submit this.
</div>

<div class = "alert alert-danger alert-dismissable">
   <button type = "button" class = "close" data-dismiss = "alert" aria-hidden = "true">
      &times;
   </button>
	
   Error ! Change few things.
</div>

<!-- Modal -->
<div class="modal fade" id="messageModal" tabindex="-1" role="dialog"
	aria-labelledby="messageModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="messageModalLabel">
					<spring:message code="lbl.message" />
				</h4>
			</div>
			<div class="modal-body"></div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal" >
					<spring:message code="lbl.close" />
				</button>
			</div>
		</div>
	</div>
</div>
