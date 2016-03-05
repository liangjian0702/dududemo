
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- Modal -->
<div class="modal fade" id="registModal" tabindex="-1" role="dialog"
	aria-labelledby="registModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<form class="form-horizontal" method="post"
				action="<%=path%>/createUser">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="registModalLabel">请注册</h4>
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
					<p><a href="#" data-toggle="modal" data-target="#loginModal" data-dismiss="modal">已有账户登录</a></p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="submit" class="btn btn-primary">注册</button>
				</div>
			</form>
		</div>
	</div>
</div>