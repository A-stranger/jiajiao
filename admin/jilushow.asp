<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('���糬ʱ������û�е�½��');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<!--#include file="conn.asp"-->

<%
id=Trim(Request.QueryString("id"))
 set rs=server.CreateObject("adodb.recordset")
 strsql="select * from jilu where id="&id
  rs.open strsql,conn,1,3
%>
<title></title>
<link href="css.css" rel="stylesheet" type="text/css" />
<table width="625" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6699cc">
  <tr> 
    <td width="623" height="26"> <div align="center" class="ziti02"><font color="#FFFFFF">
        
        ��ϸ��¼ </font></div></td>
  </tr>
  <tr> 
    <td height="107" valign="top" bgcolor="#FFFFFF"><br />
    <table width="90%" border="0" align="center" cellpadding="0" cellspacing="1">
            <tbody>
          <tr bgcolor="#eeeeee">
            <td width="27%" height="35" bgcolor="#E3E3E3" class="ziti03"><div align="right">��Ա��ţ�</div></td>
            <td width="73%" bgcolor="#E3E3E3" class="ziti03"><span style="font-size: 10pt">&nbsp;T<%= rs("userid") %></span></td>
          </tr>
          
          <tr bgcolor="#eeeeee">
            <td height="35" class="ziti03"><div align="right">��¼ ��</div></td>
            <td bgcolor="#e3e3e3" class="ziti03"><div align="left"><span 
                  class="asho_link_9"><span style="font-size: 10pt"> &nbsp; <%= rs("jilu") %></span></span></div></td>
          </tr>
        </tbody>
    </table>
      <br />
      <%
	      rs.Close
          set rs=nothing
		 %>
    </td></tr>
</table>
</body>
</html>








