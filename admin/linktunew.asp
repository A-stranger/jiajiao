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
if( form1.shuoming.value =="") {
alert("\������������ַ!")
return false;
}
return true;
}
// -->
</script>
<link href="css.css" rel="stylesheet" type="text/css">
<%
dim action
action=trim(request.form("action"))
if action<>"" then
session("shuoming")=trim(request.form("shuoming"))
response.Redirect("upimg02.asp")
end if
%>
<title>��ҵ��Ϣ����</title>
<link href="css.css" rel="stylesheet" type="text/css" />
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6699cc">
  <tr> 
    <td height="26"> <div align="center"><font color="#FFFFFF">
        
        <span class="ziti02">�������ͼƬ</span>        </font></div></td>
  </tr>
  <tr> 
    <td height="107" valign="top" bgcolor="#FFFFFF"> <table width="532" border="0" align="center" cellpadding="3" cellspacing="0">
        <form name="form1" method="post" action="linktunew.asp" onSubmit="return checkdata()">
                  
          <tr> 
            <td width="18%" class="ziti03">������ַ��</td>
            <td width="82%" COLSPAN="2"><input name="shuoming" type="text" class="button" id="shuoming" value="" size="28">
              <span class="ziti05">��ʽ��http://www.aaa.com</span></td>
          </tr>
           
	
          <tr> 
            <td class="ziti03">����ͼƬ��</td>
            <td COLSPAN="2" class="ziti03">�ύ�󷽿����ͼƬ��</td>
          </tr>
          
          
          
          <tr> 
            <td height="22" colspan="3"> <div align="center">
              <input name="Submit" type="submit" class="button" value="�� �� �� ��">
              <input name="action" type="hidden" value="45">
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

