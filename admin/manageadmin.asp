<!--#include file="conn.asp"-->
<%if session("admin")="" then
response.Write "<script language='javascript'>alert('���糬ʱ������û�е�½��');window.location.href='guanli_lgoin.asp';</script>"
response.End
else
ps=instr(session("flag"),"0") 
	if ps=0 then
response.Write "<p align=center><font color=red>��û�д���Ŀ����Ȩ�ޣ�</font></p>"
response.End
end if
end if

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../images/css.css" rel="stylesheet" type="text/css">
<link href="css.css" rel="stylesheet" type="text/css">
</head>
<body>

<table class="tableBorder" width="99%" border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#227776">
<tr> 
<td colspan="4" align="center" background="images/admin_bg_1.gif"><b class="ziti04"><font color="#ffffff">��̨����Ա����</font></b></td>
</tr>
<tr align="center" > 
<td width="12%" bgcolor="#FFFFFF" class="ziti03">����Ա</td>
<td width="12%" bgcolor="#FFFFFF" class="ziti03">�� ��</td>
<td width="12%" bgcolor="#FFFFFF" class="ziti03">����</td>
<td width="9%" bgcolor="#FFFFFF" class="ziti03">�� ��</td>
</tr>
		<%
		
		set rs=server.CreateObject("adodb.recordset")
		rs.Open "select * from admin",conn,1,1
		
		do while not rs.EOF
		
		%>
        
<form name="form1" method="post" action="saveadmin.asp?action=edit&id=<%=int(rs("adminid"))%>">
<tr align="center" > 
<td bgcolor="#FFFFFF"><input name="admin" type="text" class="button" value="<%=trim(rs("admin"))%>" size="16"></td>
<td bgcolor="#FFFFFF"><input name="password" type="text" class="button" size="16"></td>
<td bgcolor="#FFFFFF"><input name="username" type="text" class="button" id="username" value="<%=trim(rs("username"))%>" size="16"></td>
<td bgcolor="#FFFFFF">
<% 
dwe=rs("flag")
If dwe="1" Then %>
<input name="Submit" type="submit" class="button" value="�� ��">
  <br>
  &nbsp;<a href="saveadmin.asp?id=<%=int(rs("adminid"))%>&action=del" class="top" onClick="return confirm('��ȷ��Ҫɾ�����û���')"><font color=red>ɾ��</font></a>
  <% End If %>
  </td>
</tr>
</form>
		<%rs.movenext
		loop
		
		rs.close
		set rs=nothing
		%>
</table>
<br>
<table class="tableBorder" width="99%" border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#227776">
<tr> 
<td colspan="4" align="center" background="images/admin_bg_1.gif"><b class="ziti04"><font color="#ffffff">��ӹ���Ա</font></b></td>
</tr>
<tr align="center" > 
<td width="12%" bgcolor="#FFFFFF" class="ziti03">����Ա</td>
<td width="12%" bgcolor="#FFFFFF" class="ziti03">�� ��</td>
<td width="12%" bgcolor="#FFFFFF" class="ziti03">����</td>
<td width="9%" bgcolor="#FFFFFF" class="ziti03">�� ��</td>
</tr>
<form name="form1" method="post" action="saveadmin.asp?action=add">
<tr align="center" > 
<td bgcolor="#FFFFFF"><input name="admin2" type="text" class="button" size="16"></td>
<td bgcolor="#FFFFFF"><input name="password2" type="text" class="button" size="16"> </td>
<td bgcolor="#FFFFFF" class="ziti03"><input name="username2" type="text" class="button" id="username2" size="16"></td>
<td bgcolor="#FFFFFF"><input name="Submit2" type="submit" class="button" value="���"></td>
</tr>
</form>
</table>

</body>
</html>
