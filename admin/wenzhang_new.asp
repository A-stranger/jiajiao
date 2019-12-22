<!--#include file="conn.asp"-->
<script language="JavaScript">
<!--
function checkdata() {
if( form1.title.value =="") {
alert("\请填写标题!")
return false;
}
return true;
}
// -->
</script>
<%
dim action
type1=Trim(Request.QueryString("type"))
action=trim(request.form("action"))
if action<>"" then
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from news",conn,1,3
rs.addnew
rs("type")=trim(request.form("type"))
rs("user")=trim(request.form("user"))
rs("laiyuan")=trim(request.form("laiyuan"))
rs("title")=trim(request.form("title"))
rs("neirong")=trim(request.form("webimg12"))
rs("bookpic")=trim(request.form("bookpic"))
rs.update
rs.close
set rs=nothing
dd=trim(request.form("type"))
response.Write "<script language=javascript>alert('添加成功！');window.location.href='wenzhang.asp?dw="&dd&"';</script>"
response.End
end if

%>
<title></title>
<link href="css.css" rel="stylesheet" type="text/css" />
<script type="text/JavaScript">
<!--
function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}
//-->
</script>
<table width="625" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6699cc">
  <tr> 
    <td width="623" height="26" background="images/admin_bg_1.gif"> <div align="center" class="ziti04"><font color="#FFFFFF">
        
    添 加 文 章 </font></div></td>
  </tr>
  <tr> 
    <td height="107" valign="top" bgcolor="#FFFFFF"> <table width="97%" border="0" align="center" cellpadding="3" cellspacing="0">
        <form name="form1" method="post" action="wenzhang_new.asp" onSubmit="return checkdata()">
         
          <tr>
            <td width="15%" class="ziti03">所属分类: </td>
            <td width="85%" COLSPAN="2"><select name="type" class="button" id="type">
              <option value="<%= type1 %>" selected="selected"><%= type1 %></option>
                         </select></td>
          </tr> 
          <tr>
            <td class="ziti03">文章来源：</td>
            <td COLSPAN="2"><input name="laiyuan" type="text" class="button" id="laiyuan" value="山东家教网" size="40" maxlength="70" /></td>
          </tr>
          <tr>
            <td class="ziti03">文章作者：</td>
            <td COLSPAN="2"><input name="user" type="text" class="button" id="user" value="山东家教网" size="40" maxlength="70" /></td>
          </tr>
          <tr>
            <td class="ziti03">文章标题：</td>
            <td COLSPAN="2"><input name="title" type="text" class="button" id="title" size="40" maxlength="70" /></td>
          </tr>
          
                  
          <tr> 
            <td valign="top" class="ziti03">文章内容：</td>
            <td COLSPAN="2"> <INPUT type="hidden" name="webimg12">	
              <iframe ID="webimg12" src="htmledit/ewebeditor.asp?id=webimg12&style=standard" frameborder="0" scrolling="no" width="500" HEIGHT="400"></iframe>            </td>
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

 
