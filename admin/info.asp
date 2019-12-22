<!--#include file="conn.asp"-->

<%
dim action
action=trim(request.form("action"))
if action<>"" then
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from info",conn,1,3
rs("title")=trim(request.form("title"))
rs("url")=trim(request.form("url"))
rs("qrexian")=trim(request.form("qrexian"))
rs("rexian")=trim(request.form("rexian"))
rs("ci")=trim(request.form("ci"))
rs("miaoshu")=trim(request.form("miaoshu"))
rs("bookpic")=trim(request.form("bookpic"))
rs("dibu")=trim(request.form("webimg12"))
rs.update
rs.close
set rs=nothing
response.Write "<script language=javascript>alert('设置成功！');window.location.href='info.asp';</script>"
response.End
end if

%>
<title></title>
<link href="css.css" rel="stylesheet" type="text/css" />

<table width="625" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6699cc">
  <tr> 
    <td width="623" height="26" background="images/admin_bg_1.gif"> <div align="center" class="ziti04"><font color="#FFFFFF">
        
    网站基本设置 </font></div></td>
  </tr>
  <tr> 
    <td height="107" valign="top" bgcolor="#FFFFFF"> <table width="97%" border="0" align="center" cellpadding="3" cellspacing="0">
        <form name="form1" method="post" action="info.asp" >
         <% set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from info",conn,1,3 %>
          <tr>
            <td class="ziti03">网站名称：</td>
            <td COLSPAN="2"><input name="title" type="text" class="button" id="title" value="<%=trim(rs("title"))%>" size="40" maxlength="70" /></td>
          </tr>
          <tr>
            <td class="ziti03">网站URL：</td>
            <td COLSPAN="2"><input name="url" type="text" class="button" id="url" value="<%=trim(rs("url"))%>" size="40" maxlength="70" /></td>
          </tr>
          <tr>
            <td class="ziti03">请家教热线：</td>
            <td COLSPAN="2" class="ziti01"><input name="qrexian" type="text" class="button" id="qrexian" value="<%=trim(rs("qrexian"))%>" size="40" maxlength="70" /> 
            多个逗号隔开</td>
          </tr>
          <tr>
            <td class="ziti03">教员热线：</td>
            <td COLSPAN="2" class="ziti01"><input name="rexian" type="text" class="button" id="rexian" value="<%=trim(rs("rexian"))%>" size="40" maxlength="70" />
            多个逗号隔开</td>
          </tr>
          <tr> 
            <td width="16%" class="ziti03">关键词：</td>
            <td width="84%" COLSPAN="2"><input name="ci" type="text" class="button" id="ci" value="<%=trim(rs("ci"))%>" size="100" maxlength="140" /></td>
          </tr>
                  
          <tr>
            <td valign="middle" class="ziti03">网站logo：</td>
            <td COLSPAN="2"><span class="ziti05">
              <input name="bookpic" type="text" class="button" id="bookpic" value="<%=trim(rs("bookpic"))%>" size="35" />
              <input name="Submit3" type="button" class="button" id="Submit2" onclick="window.open('../upload_flash.asp?formname=form1&amp;editname=bookpic&amp;uppath=bookpic&amp;filelx=jpg','','status=no,scrollbars=no,top=20,left=110,width=420,height=165')" value="上传图片" />
            </span></td>
          </tr>
          <tr>
            <td valign="middle" class="ziti03">网站描述：</td>
            <td COLSPAN="2"><input name="miaoshu" type="text" class="button" id="miaoshu" value="<%=trim(rs("miaoshu"))%>" size="100" maxlength="140" /></td>
          </tr>
          
          <tr> 
            <td valign="top" class="ziti03">网站底部：</td>
            <td COLSPAN="2"><INPUT type="hidden" name="webimg12" value="<% = Server.HtmlEncode(rs("dibu")) %>">
              <iframe ID="webimg12" src="htmledit/ewebeditor.asp?id=webimg12&style=standard" frameborder="0" scrolling="no" width="500" HEIGHT="280"></iframe>            </td>
          </tr>
		  <tr> 
            <td height="22" colspan="3"> <div align="center"> 
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

 
