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
            <a class="navbar-brand" href="${pageScope.basePath}jsps/index.jsp">JhYarrow's studio</a>
          </div>
          <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
               <li><a href="${pageScope.basePath}jsps/blog.jsp">博客</a></li>
			   <li class="dropdown">
                <a href="${pageScope.basePath}jsps/tool.jsp" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">工具<span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                </ul>
              </li>
			  <li><a href="${pageScope.basePath}jsps/about.jsp">关于本人</a></li>
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
        <h1 class="blog-title">File类</h1>
      <div class="row">
      	<div class="col-sm-8 blog-main">
        <p class="lead blog-description">
        	&nbsp;&nbsp;&nbsp;&nbsp;File类定义4个静态常量pathSeparator,separator的String和char类型，pathSeparator路径分隔符，在windows下为逗号，在linux下为冒号。
        	separator分隔符，在windows下为\，在Linux下/。体现了Java跨平台的特性。<br/>
        	&nbsp;&nbsp;&nbsp;&nbsp;File类定义枚举类型PathStatus定义路径的状态类型，分为invalid和checked。定义status为当前文件路径的状态 。
        	Status与prefixlength同为transient类型，意味着不会被持久化，同时我们不能调用。<br/>
        	&nbsp;&nbsp;&nbsp;&nbsp;File类定义全局变量fs,由抽象类FileSystem的native getFileSystem生成，
        	filesystem定义了一些抽象方法和参数，是对本地文件系统的抽象。<br/>
        	&nbsp;&nbsp;&nbsp;&nbsp;File构造器有4个：<br/>
        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.通过路径构造<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.通过父文件路径和文件名构造（2种）<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.通过URI构造<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;如果路径中不存在绝对路径，那么path为相对路径，绝对路径为项目目录+path;<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;如果路径中存在绝对路径，那么path=绝对路径<br/>
        </p>
        <img src="<%=basePath%>img/pic1.jpg"/>
        <p class="lead blog-description">
        	一些方法：<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;String getName():返回路径中最后一个separator之后的字符串，也就是文件名<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;File getAbsoluteFile():获得绝对路径，生成文件并返回<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;boolean isInvalid():判断path是否非法，如果path存在空格为invalid，不存在为checked<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;String getCanonicalPath():判断路径是否非法，然后返回规范路径。规范路径是绝对路径且唯一。<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;系统会将路径名中移除多余的名称（如“.”和“..”），分析符号链接（基于UNIX平台），以及将驱动器名称转换成标准大小写形式（基于Windows平台）<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;boolean canRead(),boolean canWrite()，boolean exists(),boolean isDirectory(),
			boolean isFile(),boolean isHidden()，long lastModified()，long length()判断文件可读，可写，是否存在，
			是否为目录，是否是文件，是否是一个隐藏文件,返回最后修改时间，返回文件的长度<br/>
        </p>
        <img src="<%=basePath%>img/pic2.jpg"/>
        <p class="lead blog-description">
        	&nbsp;&nbsp;&nbsp;&nbsp;Boolean createNewFile() 如果路径文件存在，那么返回false,如果不存在，那么返回true并且创建文件<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;Boolean delete()如果路径文件存在，删除文件，返回true，否则返回false<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;Void deleteOnExit() 在JVM停止后删除文件<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;String[] list()返回目录下所有文件名，与File[] listFiles相同，参数中添加FilenameFilter对文件过滤<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;Boolean mkdir()创建该路径的目录返回true,如果该目录存在或上级目录不存在则返回false。Boolean mkdirs()则创建该路径的目录
			和所有必要的目录并返回true，如果存在返回false<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;Boolean renameTo(File)重命名文件<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;Boolean SetLastModified(long time)设置文件最后修改时间<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;Boolean SetReadOnly()把文件设置为只读<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;File[] listRoots()经测试返回系统盘的路径<br/>
        </p>
         <img src="<%=basePath%>img/pic3.jpg"/>
         <p class="lead blog-description">
         	&nbsp;&nbsp;&nbsp;&nbsp;Long getTotalSpace()获取该路径文件占用空间大小<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;Long getUsableSpace()获取该路径文件可用于JVM字节数<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;Long getFreeSpace()获取该路径文件未分配的空间大小<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;若刚刚获得空间大小之后，其他资源在磁盘上存数据，会导致空间大小发生改变，所以所得的空间大小并不准确<br/>
         </p>
         <img src="<%=basePath%>img/pic4.jpg"/>
         <p class="lead blog-description">
        	&nbsp;&nbsp;&nbsp;&nbsp;Int compareTo(file)比较两个文件的路径，在windows下不分大小写<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;String toString()返回路径<br/>
         </p>
      </div>

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
