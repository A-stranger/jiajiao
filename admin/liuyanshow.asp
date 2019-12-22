<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('网络超时或您还没有登陆！');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<!--#include file="conn.asp"-->
<%
id=Trim(Request.QueryString("id"))
set rs=server.CreateObject("adodb.recordset")
strsql="select * from liuyan where id="&id
rs.open strsql,conn,1,3
rs("zhuangtai")="已查看"
rs.update
%>
<title></title>
<link href="css.css" rel="stylesheet" type="text/css" />
<table width="624" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6699cc">
  <tr> 
    <td width="622" height="26"> <div align="center" class="ziti02"><font color="#FFFFFF">
        
    意见反馈</font></div></td>
  </tr>
  <tr> 
    <td height="107" valign="top" bgcolor="#FFFFFF"><br />
      <table height="210" border="0" align="center" cellpadding="0" cellspacing="1">
      <tr>
        <td width="106" align="center" valign="middle" bgcolor="#CCCCCC" class="ziti01"><p>姓 名: </p></td>
        <td width="413" valign="middle" bgcolor="#CCCCCC" class="ziti01"><p><%= rs("username") %></p></td>
      </tr>
      <tr>
        <td width="106" align="center" valign="middle" bgcolor="#CCCCCC" class="ziti01"><p>电 话 : </p></td>
        <td width="413" valign="middle" bgcolor="#CCCCCC" class="ziti01"><p><%= rs("tel") %></p></td>
      </tr>
      <tr>
        <td width="106" align="center" valign="middle" bgcolor="#CCCCCC" class="ziti01"><p>QQ: </p></td>
        <td width="413" valign="middle" bgcolor="#CCCCCC" class="ziti01"><p><%= rs("qq") %></p></td>
      </tr>
      <tr>
        <td align="center" valign="middle" bgcolor="#CCCCCC" class="ziti01">MSN:</td>
        <td valign="middle" bgcolor="#CCCCCC" class="ziti01"><%= rs("msn") %></td>
      </tr>
      <tr>
        <td width="106" align="center" valign="middle" bgcolor="#CCCCCC" class="ziti01"><p>E-mail: </p></td>
        <td width="413" valign="middle" bgcolor="#CCCCCC" class="ziti01"><p><%= rs("email") %></p></td>
      </tr>
      <tr>
        <td width="106" height="87" align="center" valign="middle" bgcolor="#CCCCCC" class="ziti01"><p>备注: </p></td>
        <td width="413" valign="middle" bgcolor="#CCCCCC" class="ziti01"><p><%= rs("neirong") %></p></td>
      </tr>
    </table>
      <br />
      <%
	      rs.Close
          set rs=nothing
		 %>
    </td>
  </tr>
</table>


 








