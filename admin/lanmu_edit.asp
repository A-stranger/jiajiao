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
if( form1.title.value =="") {
alert("\����д��Ŀ����!")
return false;
}
return true;
}
// -->
</script>
<%
dim action
id=Trim(Request.QueryString("id"))
action=trim(request.form("action"))
if action<>"" then
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from lanmu where id="&action,conn,1,3
rs("type")=trim(request.form("type"))
rs("title")=trim(request.form("title"))
rs.update
rs.close
set rs=nothing
dd=trim(request.form("type"))
response.Write "<script language=javascript>alert('�޸ĳɹ���');history.go(-1);</script>"
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
        
    �޸�<%= type1 %> </font></div></td>
  </tr>
  <tr>  <%
		    set rs=server.CreateObject("adodb.recordset")
            rs.Open "select * from lanmu where id="&id,conn,1,1
			type1=rs("type")
			  %>
    <td height="107" valign="top" bgcolor="#FFFFFF"> <table width="62%" border="0" align="center" cellpadding="3" cellspacing="0">
        <form name="form1" method="post" action="lanmu_edit.asp" onSubmit="return checkdata()">
         
          <tr>
            <td class="ziti03">������Ŀ: </td>
            <td COLSPAN="2"><select name="type" class="button" id="type">
              <option value="<%= type1 %>" selected="selected"><%= type1 %></option>
                         </select></td>
          </tr> 
          <tr> 
            <td width="24%" class="ziti03"><%= type1 %>���ƣ�</td>
            <td width="76%" COLSPAN="2"><input name="title" type="text" class="button" id="title" value="<%= rs("title") %>" size="40" maxlength="70" /></td>
          </tr>
                  
		  <tr> 
            <td height="22" colspan="3"> <div align="center"> 
                <input name="Submit" type="submit" class="button" value="�� ��">
                <input name="action" type="hidden" value="<%= rs("id") %>" />
                <input name="Submit2" type="reset" class="button" value="�� ��">
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

 
