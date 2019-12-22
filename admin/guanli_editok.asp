<!--#include file="conn.asp"-->
<!--#include file="md5.asp"-->
<% 
password=md5(Trim(Request.Form("password")))
newpassword=md5(Trim(Request.Form("newpassword")))
set rs=server.CreateObject("adodb.recordset")
strsql="Select * from admin where password='"&password&"'" 
rs.open strsql,conn,1,3
if rs.eof and rs.bof then
response.Write("<script>alert(' ¾ÉÃÜÂë´íÎó!');history.go(-1);</script>")
response.end
end if
rs("password")=newpassword
rs.update
response.Write("<script>alert('ĞŞ¸Ä³É¹¦!');history.go(-1);</script>")
response.end
rs.close
set rs=nothing
conn.close
set conn=nothing
%> 
