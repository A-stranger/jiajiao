<% 
dim database
database="@#$&jiajiaowang.mdb"
on error resume next
set conn=server.CreateObject("ADODB.connection")
strconn="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath(""&database&"") 
if err then
err.clear
else
conn.open strconn
end if
%> 







