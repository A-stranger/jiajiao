<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('网络超时或您还没有登陆！');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<!--#include file="conn.asp"-->
 <%
  id=Trim(Request("shenhe"))
  dd=Trim(Request.Form("dw"))
  set rs=server.CreateObject("adodb.recordset")
  strsql="delete * from lanmu where id in ("&request("shenhe")&")"
  rs.open strsql,conn,1,3
response.Write "<script language=javascript>alert('删除成功！');window.location.href='lanmu.asp?dw="&dd&"';</script>"
  %> 
