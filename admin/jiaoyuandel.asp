<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('���糬ʱ������û�е�½��');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<!--#include file="conn.asp"-->
  <%
  dw=Trim(Request.QueryString("dw"))
  id=Trim(Request.QueryString("id"))
  set rs=server.CreateObject("adodb.recordset")
  strsql="delete * from jiaoyuan where id="&id
  rs.open strsql,conn,1,3
  rs.close
  set rs=nothing

  set rs=server.CreateObject("adodb.recordset")
  strsql="delete * from jiandang where userid="&id
  rs.open strsql,conn,1,3
  rs.close
  set rs=nothing
  
  set rs=server.CreateObject("adodb.recordset")
  strsql="delete * from baozheng where userid="&id
  rs.open strsql,conn,1,3
  rs.close
  set rs=nothing
  
   set rs=server.CreateObject("adodb.recordset")
  strsql="delete * from yufu where userid="&id
  rs.open strsql,conn,1,3
  rs.close
  set rs=nothing
  
  set rs=server.CreateObject("adodb.recordset")
  strsql="delete * from zhongjie where userid="&id
  rs.open strsql,conn,1,3
  rs.close
  set rs=nothing
response.Write "<script language=javascript>alert('ɾ���ɹ���');window.location.href='jiaoyuan.asp?dw="&dw&"';</script>"
  %> 
 







