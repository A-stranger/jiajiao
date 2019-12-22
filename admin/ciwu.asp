<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('网络超时或您还没有登陆！');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<!--#include file="conn.asp"-->

<link href="css.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.STYLE1 {
	color: #FF0000;
	font-weight: bold;
	font-size: 12pt;
}
.STYLE11 {color: #FF0000}
-->
</style>
<p>
</p>
<table width="683" height="108" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6699cc">
  <tr>
    <td width="681" height="26"><div align="center" class="ziti02">财 务 管 理</div></td>
  </tr>
  <tr>
    <td height="79" valign="top" bgcolor="#FFFFFF"><br>
      <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
     
<% 
set rs=server.CreateObject("adodb.recordset")
strsql="select * from baozheng  "
rs.open strsql,conn,1,1
baozheng=0   
do while not rs.eof 
baozheng=rs("baozheng")+baozheng
rs.movenext  									'指向下一条记录
if rs.eof then exit do  						'已经到底最后一条记录则跳出
loop
rs.close
set rs=nothing

set rs=server.CreateObject("adodb.recordset")
strsql="select * from jiandang  "
rs.open strsql,conn,1,1
jiandang=0   
do while not rs.eof 
jiandang=rs("jiandang")+jiandang
rs.movenext  									'指向下一条记录
if rs.eof then exit do  						'已经到底最后一条记录则跳出
loop
rs.close
set rs=nothing

set rs=server.CreateObject("adodb.recordset")
strsql="select * from yufu  "
rs.open strsql,conn,1,1
yufu=0   
do while not rs.eof 
yufu=rs("yufu")+yufu
rs.movenext  									'指向下一条记录
if rs.eof then exit do  						'已经到底最后一条记录则跳出
loop
rs.close
set rs=nothing

set rs=server.CreateObject("adodb.recordset")
strsql="select * from zhongjie "
rs.open strsql,conn,1,1
zhongjie=0   
do while not rs.eof 
zhongjie=rs("zhongjie")+zhongjie
rs.movenext  									'指向下一条记录
if rs.eof then exit do  						'已经到底最后一条记录则跳出
loop
rs.close
set rs=nothing

 %>
     
     
	 <tr>
	   <td width="1342" height="33" colspan="2" align="center" bgcolor="#FFFFFF" class="ziti03">请选择你要查看项目</td>
	   </tr>
	 <tr>
	   <td height="18" colspan="2" align="center" bgcolor="#FFFFFF" class="ziti03"><a href="jiandang1.asp" class="top">认证费（总额：<%= jiandang %>元）记录</a>&nbsp;&nbsp; <a href="baozheng.asp" class="top">保证金（总额：<%= baozheng %>元）</a>&nbsp;&nbsp; <a href="yufu1.asp" class="top">预付费（总额：<%= yufu %>元）记录</a>&nbsp; <a href="zhongjie1.asp" class="top">中介费（总额：<%= zhongjie %>元）记录</a></td>
	   </tr>
    </table>
    <br /></td>
  </tr>
</table>
</body>
</html> 