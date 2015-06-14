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
    <meta name="description" content="">
    <meta name="author" content="">

    <title>博客</title>
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

    <div class="blog-masthead">
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
			   <li>
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

    <div class="container">

      <div class="blog-header">
        <h1 class="blog-title">The Bootstrap Blog</h1>
        <p class="lead blog-description">The official example template of creating a blog with Bootstrap.</p>
      </div>

      <div class="row">

        <div class="col-sm-8 blog-main">

          <div class="blog-post">
            <h2 class="blog-post-title"><a href="<%=basePath%>jsps/blog1.jsp">File类</a></h2>
            <p class="blog-post-meta">2015-6-14</a></p>

            <p>File类定义4个静态常量pathSeparator,separator的String和char类型，pathSeparator路径分隔符，在windows下为逗号，在linux下为冒号。separator分隔符，在windows下为\，在Linux下/。体现了Java跨平台的特性...</p>
          </div><!-- /.blog-post -->
          <div class="blog-post">
            <h2 class="blog-post-title">Another blog post</h2>
            <p class="blog-post-meta">December 23, 2013 by <a href="#">Jacob</a></p>

            <p>Cum sociis natoque penatibus et magnis <a href="#">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>
          </div><!-- /.blog-post -->

          <div class="blog-post">
            <h2 class="blog-post-title">New feature</h2>
            <p class="blog-post-meta">December 14, 2013 by <a href="#">Chris</a></p>

            <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
          </div><!-- /.blog-post -->

          <nav>
            <ul class="pager">
              <li><a href="#">向前</a></li>
              <li><a href="#">向后</a></li>
            </ul>
          </nav>

        </div><!-- /.blog-main -->

        <div class="col-sm-3 col-sm-offset-1 blog-sidebar">
          <div class="sidebar-module">
		    <div class="sidebar-module">
            <h4>分类目录</h4>
            <ol class="list-unstyled">
              <li><a href="#">JavaEE</a></li>
              <li><a href="#">JavaSE</a></li>
              <li><a href="#">DataStruct</a></li>
            </ol>
          </div>
            <h4>文章归档</h4>
            <ol class="list-unstyled">
				<li><a href="#">2015年十一月</a></li>
				<li><a href="#">2015年十月</a></li>
				<li><a href="#">2015年九月</a></li>
				<li><a href="#">2015年八月</a></li>
				<li><a href="#">2015年七月</a></li>
                <li><a href="#">2015年六月</a></li>

            </ol>
          </div>

        </div><!-- /.blog-sidebar -->

      </div><!-- /.row -->

    </div><!-- /.container -->

  </body>
</html>
