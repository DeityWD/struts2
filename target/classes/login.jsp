<%@ page language="java" pageEncoding="UTF-8"%>  
<%@ taglib prefix="s" uri="/struts-tags"%>
<h1>这是测试OGNL使用的登录页面</h1>  
<h3><font color="red">提示：</font>程序设定的用户名和密码各为<font color="blue"><strong>admin</strong></font>和<font color="blue"><strong>jadyer</strong></font></h3>  
<h3><font color="red">注意：</font>用户名和密码不正确时将停留在页面不动</h3>  
<form action="<%=request.getContextPath()%>/login.action" method="POST">  
    <%--这里user.username匹配的是LoginAction中的引用类型user里面的username属性--%>  
    <%--查看标签库说明的话，就知道name中指定的是对象。这里它不是字符串，而是OGNL表达式--%>  
    姓名：<input type="text" name="user.username" value="admin"><br>  
    密码：<input type="text" name="user.password" value="jadyer"><br>  
    地址：<input type="text" name="user.address.addr" value="111"><br>  
    <input type="submit" value="测试OGNL的输出">  
    <s:debug/>
</form> 