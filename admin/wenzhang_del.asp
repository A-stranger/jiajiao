<!--#include file="conn.asp"-->
 <%
  id=Trim(Request("shenhe"))
  dd=Trim(Request.Form("dw"))
  set rs=server.CreateObject("adodb.recordset")
  strsql="delete * from news where id in ("&request("shenhe")&")"
  rs.open strsql,conn,1,3
response.Write "<script language=javascript>alert('É¾³ý³É¹¦£¡');window.location.href='wenzhang.asp?dw="&dd&"';</script>"
  %> 
