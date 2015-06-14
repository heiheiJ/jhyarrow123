<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	pageContext.setAttribute("basePath",basePath);
%>

<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>关于本人</title>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css">

<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
  </head>
  <body>
	<nav class="navbar navbar-default">
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<%=basePath %>jsps/index.jsp">JhYarrow's studio</a>
          </div>
          <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
               <li><a href="<%=basePath %>jsps/blog.jsp">博客</a></li>
			   <li >
                <a href="<%=basePath %>jsps/tool.jsp">工具</a>
              </li>
			  <li><a href="<%=basePath %>jsps/about.jsp">关于本人</a></li>
            </ul>
			<form class="navbar-form navbar-left" role="search">
				 <div class="form-group">
					 <input type="text" class="form-control" placeholder="Search">
				 </div>
				 <button type="submit" class="btn btn-default">Submit</button>
		     </form>

          </div><!--/.nav-collapse -->
        </div>
      </nav>
      <h1>尚未开发</h1>
  </body>
</html>
