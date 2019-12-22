<!--#include file="conn.asp"-->

<%
dim action
action=trim(request.form("action"))
if action<>"" then
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from news where id="&action,conn,1,3
rs("type")=trim(request.form("type"))
rs("user")=trim(request.form("user"))
rs("laiyuan")=trim(request.form("laiyuan"))
rs("title")=trim(request.form("title"))
rs("neirong")=trim(request.form("webimg12"))
rs.update
rs.close
set rs=nothing
dd=trim(request.form("type"))
response.Write "<script language=javascript>alert('修改成功！');window.location.href='wenzhang.asp?dw="&dd&"';</script>"
response.End
end if
id=Trim(Request.QueryString("id"))
%>
<title></title>
<link href="css.css" rel="stylesheet" type="text/css" />
<table width="625" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6699cc">
  <tr> 
    <td width="623" height="26" background="images/admin_bg_1.gif"> <div align="center" class="ziti04"><font color="#FFFFFF">
        
    修 改 文 章 </font></div></td>
  </tr>
  <tr> 
    <td height="107" valign="top" bgcolor="#FFFFFF"> <table width="97%" border="0" align="center" cellpadding="3" cellspacing="0">
        <form name="form1" method="post" action="wenzhang_edit.asp" onSubmit="return checkdata()">
          <%
		  set rs=server.CreateObject("adodb.recordset")
            rs.Open "select * from news where id="&id,conn,1,1
			%>
          
          <tr>
            <td class="ziti03">所属分类: </td>
            <td COLSPAN="2"><label>
              <select name="type" class="button" id="type">
                <option value="<%=trim(rs("type"))%>" selected="selected"><%=trim(rs("type"))%></option>
              </select>
            </label></td>
          </tr><tr>
            <td class="ziti03">文章来源：</td>
            <td COLSPAN="2"><input name="laiyuan" type="text" class="button" id="laiyuan" value="<%=trim(rs("laiyuan"))%>" size="40" maxlength="70" /></td>
          </tr>
          <tr>
            <td class="ziti03">文章作者：</td>
            <td COLSPAN="2"><input name="user" type="text" class="button" id="user" value="<%=trim(rs("user"))%>" size="40" maxlength="70" /></td>
          </tr>          
          <tr> 
            <td width="14%" class="ziti03">文章标题：</td>
            <td width="86%" COLSPAN="2"><input name="title" type="text" class="button" id="title" value="<%=trim(rs("title"))%>" size="30" maxlength="30" /></td>
          </tr>
           
          <tr> 
            <td valign="top" class="ziti03">文章内容：</td>
            <td COLSPAN="2"> <INPUT type="hidden" name="webimg12" value="<% = Server.HtmlEncode(rs("neirong")) %>">	
              <iframe ID="webimg12" src="htmledit/ewebeditor.asp?id=webimg12&style=standard" frameborder="0" scrolling="no" width="500" HEIGHT="400"></iframe>            </td>
          </tr>
		  <tr> 
            <td height="22" colspan="3"> <div align="center"> 
                <input name="Submit" type="submit" class="button" value="提 交">
                <input name="action" type="hidden" value="<%= rs("id") %>" />
                <input name="Submit2" type="reset" class="button" value="恢 复">
              </div></td>
          </tr>
        </form>
      </table>
      <%
	      rs.Close
          set rs=nothing
		 %>
    </td>
  </tr>
</table>
</body></html>

 
