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
if( form1.shuoming.value =="") {
alert("\请输入链接网址!")
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
<title>企业信息管理</title>
<link href="css.css" rel="stylesheet" type="text/css" />
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#6699cc">
  <tr> 
    <td height="26"> <div align="center"><font color="#FFFFFF">
        
        <span class="ziti02">添加链接图片</span>        </font></div></td>
  </tr>
  <tr> 
    <td height="107" valign="top" bgcolor="#FFFFFF"> <table width="532" border="0" align="center" cellpadding="3" cellspacing="0">
        <form name="form1" method="post" action="linktunew.asp" onSubmit="return checkdata()">
                  
          <tr> 
            <td width="18%" class="ziti03">链接网址：</td>
            <td width="82%" COLSPAN="2"><input name="shuoming" type="text" class="button" id="shuoming" value="" size="28">
              <span class="ziti05">格式：http://www.aaa.com</span></td>
          </tr>
           
	
          <tr> 
            <td class="ziti03">链接图片：</td>
            <td COLSPAN="2" class="ziti03">提交后方可添加图片！</td>
          </tr>
          
          
          
          <tr> 
            <td height="22" colspan="3"> <div align="center">
              <input name="Submit" type="submit" class="button" value="提 交 添 加">
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

