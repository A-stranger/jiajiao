<!--#include file="conn.asp"-->
<%
dd=Trim(Request("name")) 
if dd=empty then
showmessage="�û�����Ϊ�գ�����������!"
else
set rs=server.CreateObject("adodb.recordset")
strsql="Select * from jiaoyuan where username='"&dd&"'"
rs.open strsql,conn,2,2
if not rs.eof then
showmessage="���û������ѱ�ռ��,����������!"
else
showmessage="���û����ƿ��Ա�ʹ�ã�"
end if
end if
%>
<html>
<style type="text/css">
<!--
.STYLE1 {
color: #FF0000;
font-size: 16px;
}
-->
</style>
<body>
<p><br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE1"><%=showmessage%></span></p>
</body>
</html>
