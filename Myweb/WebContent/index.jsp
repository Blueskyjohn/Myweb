<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="css/sohu.css">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <title>Title</title>
    <!-- Button trigger modal -->
    <style>
        #login{
            margin-top: 20px;
        }
        .modal-dialog{
            margin-left: auto;
            margin-right: auto;
        }
    </style>
</head>
<body>
    <!--<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" >-->
        <!--Launch demo modal-->
    <!--</button>-->
    <div class=div_top>
	<span class="login">
        <form>
        <%
        	//out.print(request.getParameter("act"));
        	if(request.getParameter("act")!=null &&"success".equals(request.getParameter("act"))){
        		out.print(session.getAttribute("username")+"&nbsp&nbsp");
        	}
        %>
            <a href="#" data-toggle="modal" data-target="#myModal">登陆</a>
            　<a href="#">注册</a>　<a href="#">帮助</a>
        </form>
	</span>

    </div>
    <div class="logo"></div>
    <div class="navi"></div>

    <div class="div2">
        <div class="div2_1"></div>
        <div class="div2_2"></div>
        <div class="div2_3"></div>
        <div class="div2_4"></div>
    </div>
    <!-- Modal -->
    <div class="modal fade bs-example-modal-sm" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <div>
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" role="tablist">
                            <li role="presentation" class="active"><a href="#login" aria-controls="login" role="tab" data-toggle="tab">登陆</a></li>
                            <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">注册</a></li>
                        </ul>
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="login">
                                <form class="form-signin" action="dologin.jsp" method="post">
                                    <label for="inputEmail" class="sr-only">Email address</label>
                                    <input type="text" class="form-control" name="username" placeholder="Text input" required autofocus>
                                    <label for="inputPassword" class="sr-only">Password</label>
                                    <input type="password" id="inputPassword" class="form-control" name="password" placeholder="Password" required>
                                    <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="is_remeber" value="remember-me"> Remember me
                                    </label>
                                </div>
                                <button class="btn btn-lg btn-primary btn-block" type="submit">登陆</button>
                                </form>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="profile">bbb</div>
                        </div>

                    </div>

                </div>
            </div>
        </div>
    </div>

    <!--2. jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <!--3. 加载bootstrap核心js库 -->
    <script src="js/bootstrap.min.js"></script>

</body>
</html>