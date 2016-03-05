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
				action="<%=path%>/loginSubmit">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="loginModalLabel">请登录</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label class="col-sm-2 control-label" for="name">用户名</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="name" name="name"
								placeholder="name" required />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" for="password">密码</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="password"
								name="password" placeholder="password" required />
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<div class="checkbox">
								<label> <input type="checkbox" value="remember-me" />
									记住
								</label>
							</div>
						</div>
					</div>
					<p><a href="#" data-toggle="modal" data-target="#registModal" data-dismiss="modal">还没有账户？</a></p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary">Login</button>
				</div>
			</form>
		</div>
	</div>
</div>
