<% 
dim database
database="admin/@#$&jiajiaowang.mdb"
on error resume next
set conn=server.CreateObject("ADODB.connection")
strconn="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath(""&database&"") 
if err then
err.clear
else
conn.open strconn
end if
%> <% set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from info",conn,1,3
title=rs("title")
url=rs("url")
ci=rs("ci")
miaoshu=rs("miaoshu")
bookpic=rs("bookpic")
dibu=rs("dibu")
gonggao=rs("gonggao")
rexian=rs("rexian")
qrexian=rs("qrexian")
banquan=rs("banquan")
web="山东家教网|mdjjj.net"
rs.close
set rs=nothing %>
