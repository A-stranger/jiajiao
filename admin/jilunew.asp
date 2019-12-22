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
if( form1.radiobutton.value =="") {
alert("\请选择是否成功!")
return false;
}
if( form1.title.value =="") {
alert("\请填写编号!")
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
rs.Open "select * from jilu",conn,1,3
rs.addnew
rs("chenggong")=trim(request.form("radiobutton"))
rs("userid")=trim(request.form("title"))
rs("jilu")=trim(request.form("webimg12"))
rs.update
rs.close
set rs=nothing
response.Write "<script language=javascript>alert('     添加成功！');history.go(-1);</script>"
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
<style type="text/css">
<!--
.STYLE1 {
	color: #FF0000;
	font-size: 10pt;
}
-->
</style>
<table width="625" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6699cc">
  <tr> 
    <td width="623" height="26"> <div align="center" class="ziti02"><font color="#FFFFFF">
        
        添加记录 </font></div></td>
  </tr>
  <tr> 
    <td height="107" valign="top" bgcolor="#FFFFFF"> <table width="97%" border="0" align="center" cellpadding="3" cellspacing="0">
        <form name="form1" method="post" action="jilunew.asp" onSubmit="return checkdata()">
             
          <tr>
            <td class="ziti03">成功记录：</td>
            <td COLSPAN="2"><input name="radiobutton" type="radio" value="是" />
              <span class="ziti03">
              是
              <label>
              <input type="radio" name="radiobutton" value="否" />
              </label>
            否</span></td>
          </tr>
          <tr> 
            <td width="13%" class="ziti03">教员编号：</td>
            <td width="87%" COLSPAN="2"><input name="title" type="text" class="button" id="title" size="30" maxlength="30" /> 
              <span class="STYLE1">不要加“T”</span></td>
          </tr>
                  
          <tr> 
            <td valign="top" class="ziti03">记录内容：</td>
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

 
 







