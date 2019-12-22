<%
if session("admin")="" then
response.Write "<script language='javascript'>alert('网络超时或您还没有登陆！');window.location.href='guanli_lgoin.asp';</script>"
response.End
end if
%>
<!--#include file="conn.asp"-->
<script language="JavaScript">
<!--
function checkdata() {
if( form1.title.value =="") {
alert("\请填写链接文字!")
return false;
}
if( form1.url.value =="") {
alert("\请填写链接网址!")
return false;
}
return true;
}
// -->
</script>
<%
dim action
action=trim(request.form("action"))
if action<>"" then
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from linkwen where linkwen_id="&action,conn,1,3
rs("linkwen_wenzi")=trim(request.form("title"))
rs("linkwen_url")=trim(request.form("url"))
rs.update
rs.close
set rs=nothing
response.Write "<script language=javascript>alert('    修改成功！');history.go(-1);</script>"
response.End
end if
id=Trim(Request.QueryString("id"))
%>
<title></title>
<link href="css.css" rel="stylesheet" type="text/css" />
<table width="625" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6699cc">
  <tr> 
    <td width="623" height="26"> <div align="center" class="ziti02"><font color="#FFFFFF">
        
        修改友情链接 </font></div></td>
  </tr>
  <tr> 
    <td height="107" valign="top" bgcolor="#FFFFFF"> <table width="73%" border="0" align="center" cellpadding="3" cellspacing="0">
        <form name="form1" method="post" action="linkwenedit.asp" onSubmit="return checkdata()">
          <%
		  set rs=server.CreateObject("adodb.recordset")
            rs.Open "select * from linkwen where linkwen_id="&id,conn,1,1
			%>
          
          <tr> 
            <td width="21%" class="ziti03">链接文字：</td>
            <td width="79%" COLSPAN="2"><input name="title" type="text" class="button" id="title" value="<%=trim(rs("linkwen_wenzi"))%>" size="30" maxlength="30" /></td>
          </tr>
          
          
          <tr> 
            <td valign="top" class="ziti03">链接网址：</td>
            <td COLSPAN="2"><input name="url" type="text" class="button" id="url" value="<%=trim(rs("linkwen_url"))%>" size="30" maxlength="30" />
              <span class="ziti05">格式：http://www.aaa.com</span></td>
          </tr>
		  <tr> 
            <td height="22" colspan="3"> <div align="center"> 
                <input name="Submit" type="submit" class="button" value="提 交">
                <input name="action" type="hidden" value="<%= rs("linkwen_id") %>" />
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

 







