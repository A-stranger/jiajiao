<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('���糬ʱ������û�е�½��');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<!--#include file="conn.asp"-->
<script language="JavaScript">
<!--
function checkdata() {
j=0;
for(i=0;i<document.form1.zhuangtai.length;i++)
{
  if(document.form1.zhuangtai[i].checked==true)
  {
  j++;    
  }
}
if(j==0)
{
 alert('��ѡ������');
 return false;
}

return true;
}
// -->
</script>
<% 
dim action
action=trim(request.form("action"))
id=Trim(Request("id"))
if action<>"" then

set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from yuyue where id="&id,conn,1,3
rs("zhuangtai")=request.form("zhuangtai")

rs.update
rs.close
set rs=nothing
response.Write "<script language=javascript>alert('     ����ɹ���');window.location.href='jdingdan.asp';</script>"
response.End
end if
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from yuyue where id="&id,conn,1,3
 %>

 
<title></title>
<link href="css.css" rel="stylesheet" type="text/css" />
<table width="624" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6699cc">
  <tr> 
    <td width="622" height="26"> <div align="center" class="ziti02"><font color="#FFFFFF">
������ϸ</font></div></td>
  </tr>
  <tr> 
    <td height="107" align="center" valign="top" bgcolor="#FFFFFF"><br />
     <form name="form1" method="post" action="jdingdan-show.asp" onSubmit="return checkdata()"> 
       <table height="187" border="0" align="center" cellpadding="5" cellspacing="1">
      <tr>
        <td height="35" align="center" valign="middle" bgcolor="#CCCCCC" class="ziti01">�� ��</td>
        <td valign="middle" bgcolor="#CCCCCC" class="ziti01"><span class="ziti03">
          <label>
          <input name="zhuangtai" type="radio" value="ͨ��"
           <% If rs("zhuangtai")="ͨ��" Then %>
           checked="checked" 
           <% End If %>
           />
          </label>
ͨ��
<label>
<input  name="zhuangtai" type="radio" value="���" 
<% If rs("zhuangtai")="���" Then %>
checked="checked"
<% End If %>
 />
</label>
���</span></td>
      </tr>
      <tr>
        <td width="106" height="35" align="center" valign="middle" bgcolor="#CCCCCC" class="ziti01"><p>�� ��: </p></td>
        <td width="413" valign="middle" bgcolor="#CCCCCC" class="ziti01"><p><%= rs("title") %></p></td>
      </tr>
      <tr>
        <td width="106" align="center" valign="middle" bgcolor="#CCCCCC" class="ziti01"><p>�� ��: </p></td>
        <td width="413" valign="middle" bgcolor="#CCCCCC" class="ziti01"><p><%= rs("neirong") %></p></td>
      </tr>
    </table>
      <br />
    
      <input name="id" type="hidden" id="id" value="<%= rs("id") %>" />
      <input name="action" type="submit" class="button" id="action" value="�ύ��¼" /> 
       <%
	      rs.Close
          set rs=nothing
		 %>
     </form>
    </td>
  </tr>
</table>


 








