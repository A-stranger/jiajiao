<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('网络超时或您还没有登陆！');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<!--#include file="conn.asp"-->
 <%
  id=Trim(Request.QueryString("id"))
  set rs=server.CreateObject("adodb.recordset")
  strsql="delete * from dingdan where id="&id
  rs.open strsql,conn,1,3
  response.Redirect "dingdan.asp"
  %> 
 