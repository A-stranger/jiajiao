<!--#include file="conn.asp"-->
<% 
id=Trim(Request.QueryString("id"))
set rec=server.createobject("ADODB.recordset") 
strsql="select * from jiaoyuan where  id="&id
rec.open strsql,conn,1,1
OLEHEADERSIZE = 78 
contentType = LCase(contentType) 
select case contentType 
case "gif", "jpeg", "bmp" 
contentType = "image/" & contentType 
bytes = field.value 
case "ole" 
contentType = "image/bmp" 
nFieldSize = field.ActualSize 
oleHeader = field.GetChunk(OLEHEADERSIZE) 
bytes = field.GetChunk(nFieldSize - OLEHEADERSIZE) 
end select  
Response.ContentType = contentType
Response.BinaryWrite rec("images")
rec.close 
set rec=nothing 
set conn=nothing 
%>








