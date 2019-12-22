<!--#include file="conn.asp"-->
<%
guanliyuan_username=session("guanliyuan_username")
set rs=server.CreateObject("adodb.recordset")
strsql="Select * from guanli where guanli_username='"&guanliyuan_username&"' order by id desc" 
rs.open strsql,conn,1,3
if not(rs.bof and rs.eof) then
rs("guanli_outtime")=now()
rs.update
end if
rs.close
conn.close
set rs=nothing
set conn=nothing
session("guanliyuan_username")="" 
session.Abandon()
response.Redirect("guanli_lgoin.asp")
response.End
%> 








