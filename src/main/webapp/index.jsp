<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Examples</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" src="http://www.internetke.com/jsEffects/2015011202/js/jquery-1.8.3.min.js"></script>
    <style type="text/css">
        .select-body{
            text-align: center;
            width: 60%;
            margin: 0 auto;
        }
        .header{
            text-align: center;
        }
        .select-left,.select-right{
            width:150px;
            min-height:200px;
        }
        .btn-bar input{
            width:50px;
        }
    </style>
</head>

<body>
<div class="header">
    <h2>select左右选择组件</h2>
</div>
<div class="row select-body">
    <div class="span2">
        <form action="${pageContext.request.contextPath}/base/path.do" method="post">
            <select multiple="multiple" id="select1" class="select-left" name="mySelects">
                <option value="超级管理员">超级管理员</option>
                <option value="普通管理员">普通管理员</option>
                <option value="信息发布员">信息发布员</option>
                <option value="财务管理员">财务管理员</option>
                <option value="产品管理员">产品管理员</option>
                <option value="资源管理员">资源管理员</option>
                <option value="系统管理员">系统管理员</option>
                <option value="超级管理员">超级管理员</option>
                <option value="普通管理员">普通管理员</option>
                <option value="信息发布员">信息发布员</option>
                <option value="财务管理员">财务管理员</option>
                <option value="产品管理员">产品管理员</option>
                <option value="资源管理员">资源管理员</option>
                <option value="科e互联">科e互联</option>
            </select>
            <input type="submit" value="提交">
        </form>
    </div>
    <div class="span2">
        <div class="btn-bar">
            <p><span id="add"><input type="button" class="btn" value=">" title="移动选择项到右侧"></span></p>
            <p><span id="add_all"><input type="button" class="btn" value=">>" title="全部移到右侧"></span></p>
            <p><span id="remove"><input type="button" class="btn" value="<" title="移动选择项到左侧"></span></p>
            <p><span id="remove_all"><input type="button" class="btn" value="<<" title="全部移到左侧"></span></p>
        </div>
    </div>
    <div class="span2">
        <select multiple="multiple" id="select2" class="select-right">
        </select>
    </div>
</div>

<script type="text/javascript">
    $("#add").bind("click",function(){
        if(!$("#select1 option").is(":selected"))
        {
            alert("选择项为空");
        }
        $("#select1 option:selected").appendTo("#select2");
    });
    $("#remove").bind("click",function(){
        if(!$("#select2 option").is(":selected"))
        {
            alert("选择项为空");
        }
        $("#select2 option:selected").appendTo("#select1");
    });
    $("#add_all").bind("click",function(){
        $("#select1 option").appendTo("#select2");
    });
    $("#remove_all").bind("click",function(){
        $("#select2 option").appendTo("#select1");
    });
    $("#select1").bind("dblclick",function(){
        $("#select1 option:selected").appendTo("#select2");
    })
    $("#select2").bind("dblclick",function(){
        $("#select2 option:selected").appendTo("#select1");
    })

</script>
</body
</html>