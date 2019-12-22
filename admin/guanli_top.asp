<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('网络超时或您还没有登陆！');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<!--#include file="conn.asp"-->
<%
guanliyuan_username=session("guanliyuan_username")
set rs=server.CreateObject("adodb.recordset")
strsql="Select * from guanliyuan where guanliyuan_username='"&guanliyuan_username&"'" 
rs.open strsql,conn,1,3
%>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style>
td{font-size:9pt;line-height:120%;color:#353535} 
BODY {
	SCROLLBAR-FACE-COLOR: #dddddd; FONT-SIZE: 12px; SCROLLBAR-HIGHLIGHT-COLOR: #ffffff; SCROLLBAR-SHADOW-COLOR: #ffffff; COLOR: #666666; SCROLLBAR-3DLIGHT-COLOR: #dddddd; SCROLLBAR-ARROW-COLOR: #ffffff; SCROLLBAR-TRACK-COLOR: #ffffff; SCROLLBAR-DARKSHADOW-COLOR: #dddddd
}
body{font-size:9pt;line-height:120%} 

a:link          { color: #FFFFFF; text-decoration: none }
a:visited       { color: #FFFFFF; text-decoration: none }
a:active        { color: #FFFFFF; text-decoration: none }
a:hover         { color: #FF0000; text-decoration: none; position: relative; right: 0px; top: 1px }
</style>
<STYLE type=text/css>
.pad {
	PADDING-LEFT: 150px
}
.STYLE2 {color: #FFFFFF}
</style>
<body bgcolor="#FFFFFF" leftmargin="4" topmargin="4" marginwidth="0" marginheight="0">
<TABLE WIDTH="98%" BORDER="0" ALIGN="center" CELLPADDING="0" CELLSPACING="0" height="20">
  <TR BGCOLOR="#227776"> 
    <TD WIDTH="40%"><FONT COLOR="#FFFFFF">→ 欢迎</FONT>&nbsp;<b><FONT COLOR="#FFFFFF"><%= rs("guanliyuan_name")%></font></b>&nbsp;<FONT COLOR="#FFFFFF">进入控制面版</FONT></TD>
    <TD WIDTH="19%" ALIGN="center"><span class="STYLE2">网站管理系统</span></TD>
    <TD WIDTH="41%" ALIGN="RIGHT"><FONT COLOR="#FFFFFF"><a href="../index.asp" target="_blank">网站主页</a></FONT>&nbsp;</TD>
</TR></TABLE>
 







