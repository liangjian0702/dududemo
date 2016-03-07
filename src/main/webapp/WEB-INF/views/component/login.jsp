<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!-- include login-->
	<jsp:include page="regist.jsp" flush="true" />

<!-- Modal -->
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog"
	aria-labelledby="loginModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<form class="form-horizontal" method="post"
				action="<%=path%>/login">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="loginModalLabel"><spring:message code="lbl.login"/></h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label class="col-sm-2 control-label" for="name"><spring:message code="lbl.username"/></label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="name" name="name"
								placeholder="<spring:message code="lbl.username"/>" required />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" for="password"><spring:message code="lbl.userpassword"/></label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="password"
								name="password" placeholder="<spring:message code="lbl.userpassword"/>" required />
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<div class="checkbox">
								<label> <input type="checkbox" value="remember-me" />
									<spring:message code="lbl.rememberme"/>
								</label>
							</div>
						</div>
					</div>
					<p class="text-right"><a href="#" data-toggle="modal" data-target="#registModal" data-dismiss="modal"><spring:message code="lbl.noaccount"/></a></p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal"><spring:message code="lbl.close"/></button>
					<button type="submit" class="btn btn-primary"><spring:message code="lbl.login"/></button>
				</div>
			</form>
		</div>
	</div>
</div>
