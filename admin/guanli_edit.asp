
<!--#include file="conn.asp"-->

<script language="JavaScript">
<!--
function checkdata() {
if( form1.password.value =="") {
alert("\�����벻��Ϊ�գ�")
return false;
}
if( form1.newpassword.value =="") {
alert("\�����벻��Ϊ�գ�")
return false;
}
if( form1.newpassword.value != form1.renewpassword.value) {
alert("\��������������벻ͬ��")
return false;
}
return true;
}
// -->
</script>
<% 
   if session("admin")="" then
   response.Redirect("guanli_lgoin.asp")
   response.End()
  end if
username=session("username")
set rs=server.CreateObject("adodb.recordset")
strsql="Select * from admin where admin='"&username&"'" 
rs.open strsql,conn,1,1
%>
<link href="css.css" rel="stylesheet" type="text/css">

<form id="form1" name="form1" method="post" action="guanli_editok.asp" onSubmit="return checkdata()">
  <table width="760" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6699cc">
    <tr>
      <td height="26" background="images/admin_bg_1.gif"><div align="center" class="ziti04">����Ա�޸�����</div></td>
    </tr>
    <tr>
      <td bgcolor="#FFFFFF"><table width="249" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="81" height="27" class="ziti03"><span class="STYLE12">&nbsp;����ԱID��</span></td>
            <td width="168"><label class="ziti03"><%= session("admin") %></label></td>
          </tr>
          <tr>
            <td height="30" class="ziti03"><span class="STYLE12">&nbsp;�����룺</span></td>
            <td><label>
              <input name="password" type="password" class="button" id="password" />
            </label></td>
          </tr>
          <tr>
            <td height="31" class="ziti03"><span class="STYLE12">&nbsp;�����룺</span></td>
            <td><input name="newpassword" type="password" class="button" id="newpassword" /></td>
          </tr>
          <tr>
            <td height="31" class="ziti03"><span class="STYLE12">&nbsp;�ظ����룺</span></td>
            <td><input name="renewpassword" type="password" class="button" id="renewpassword" /></td>
          </tr>
          <tr>
            <td height="31" colspan="2"><label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input name="Submit" type="submit" class="button"  style="cursor:hand;" value="�ύ�޸�" />
              </label>
               </td>
          </tr>
      </table></td>
    </tr>
  </table>
</form>
</body>
</html>
 
