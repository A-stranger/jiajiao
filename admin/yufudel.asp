<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('网络超时或您还没有登陆！');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<!--#include file="conn.asp"-->
 <%
  id=Trim(Request.QueryString("id"))
  userid=Trim(Request.QueryString("userid"))
  set rs=server.CreateObject("adodb.recordset")
  strsql="delete * from yufu where id="&id
  rs.open strsql,conn,1,3
  response.Redirect "yufu.asp?id="&userid
  %> 
 






