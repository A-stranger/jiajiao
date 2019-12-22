<!--#include file="conn.asp"-->

<%

if session("admin")="" then
response.Write "<script language='javascript'>alert('网络超时或您还没有登陆！');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
dim action
action=trim(request.form("action"))
if action<>"" then
set rs=server.CreateObject("adodb.recordset")
rs.Open "select banquan from body ",conn,1,3
rs("banquan")=trim(request.form("webimg12"))
rs.update
rs.close
set rs=nothing
response.Write "<script language=javascript>alert('修改成功！');history.go(-1);</script>"
response.End
end if
%>
<title></title>
<link href="css.css" rel="stylesheet" type="text/css" />
<table width="519" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6699cc">
  <tr> 
    <td height="26" background="images/admin_bg_1.gif"> <div align="center" class="ziti04"><font color="#FFFFFF">
    隐私保护         </font></div></td>
  </tr>
  <tr> 
    <td height="107" valign="top" bgcolor="#FFFFFF"> <table width="98%" border="0" align="center" cellpadding="3" cellspacing="0">
        <form name="form1" method="post" action="banquan.asp" >
          <%
		  set rs=server.CreateObject("adodb.recordset")
            rs.Open "select banquan from body ",conn,1,1
		%>         
         
          <tr> 
            <td width="172%" COLSPAN="2"> <INPUT type="hidden" name="webimg12" value="<% = Server.HtmlEncode(rs("banquan")) %>">	
              <iframe ID="webimg12" src="htmledit/ewebeditor.asp?id=webimg12&style=standard" frameborder="0" scrolling="no" width="500" HEIGHT="400"></iframe>            </td>
          </tr>
		  <tr> 
            <td height="22" colspan="2"> <div align="center"> 
                <input name="Submit" type="submit" class="button" value="提 交">
                <input name="action" type="hidden" value="45" />
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
</body>
</html>

