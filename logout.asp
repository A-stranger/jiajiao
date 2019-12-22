<!--#include file="conn.asp"-->
<%
session("guanliyuan_username")="" 
session.Abandon()
response.Redirect("index.asp")
response.End
%> 
 







